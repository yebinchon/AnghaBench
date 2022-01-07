
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ipath_ibdev {int mkeyprot; scalar_t__ mkey; int mkey_violations; int mkey_lease_period; int port_cap_flags; scalar_t__ mkey_lease_timeout; } ;
struct ib_smp {int class_version; scalar_t__ mkey; int method; int status; int attr_id; } ;
struct ib_mad {int dummy; } ;
struct ib_device {int dummy; } ;


 int HZ ;
 int IB_MAD_IGNORE_MKEY ;
 int IB_MAD_RESULT_CONSUMED ;
 int IB_MAD_RESULT_SUCCESS ;







 int IB_PORT_SM ;
 int IB_PORT_SM_DISABLED ;






 int IB_SMP_UNSUP_METHOD ;
 int IB_SMP_UNSUP_METH_ATTR ;
 int IB_SMP_UNSUP_VERSION ;
 scalar_t__ jiffies ;
 int recv_subn_get_guidinfo (struct ib_smp*,struct ib_device*) ;
 int recv_subn_get_nodedescription (struct ib_smp*,struct ib_device*) ;
 int recv_subn_get_nodeinfo (struct ib_smp*,struct ib_device*,int ) ;
 int recv_subn_get_pkeytable (struct ib_smp*,struct ib_device*) ;
 int recv_subn_get_portinfo (struct ib_smp*,struct ib_device*,int ) ;
 int recv_subn_set_guidinfo (struct ib_smp*,struct ib_device*) ;
 int recv_subn_set_pkeytable (struct ib_smp*,struct ib_device*) ;
 int recv_subn_set_portinfo (struct ib_smp*,struct ib_device*,int ) ;
 int reply (struct ib_smp*) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int process_subn(struct ib_device *ibdev, int mad_flags,
   u8 port_num, struct ib_mad *in_mad,
   struct ib_mad *out_mad)
{
 struct ib_smp *smp = (struct ib_smp *)out_mad;
 struct ipath_ibdev *dev = to_idev(ibdev);
 int ret;

 *out_mad = *in_mad;
 if (smp->class_version != 1) {
  smp->status |= IB_SMP_UNSUP_VERSION;
  ret = reply(smp);
  goto bail;
 }


 if (dev->mkey_lease_timeout &&
     time_after_eq(jiffies, dev->mkey_lease_timeout)) {

  dev->mkey_lease_timeout = 0;
  dev->mkeyprot = 0;
 }





 if ((mad_flags & IB_MAD_IGNORE_MKEY) == 0 && dev->mkey != 0 &&
     dev->mkey != smp->mkey &&
     (smp->method == 136 ||
      (smp->method == 140 &&
       dev->mkeyprot >= 2))) {
  if (dev->mkey_violations != 0xFFFF)
   ++dev->mkey_violations;
  if (dev->mkey_lease_timeout ||
      dev->mkey_lease_period == 0) {
   ret = IB_MAD_RESULT_SUCCESS |
    IB_MAD_RESULT_CONSUMED;
   goto bail;
  }
  dev->mkey_lease_timeout = jiffies +
   dev->mkey_lease_period * HZ;

  ret = IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
  goto bail;
 } else if (dev->mkey_lease_timeout)
  dev->mkey_lease_timeout = 0;

 switch (smp->method) {
 case 140:
  switch (smp->attr_id) {
  case 132:
   ret = recv_subn_get_nodedescription(smp, ibdev);
   goto bail;
  case 131:
   ret = recv_subn_get_nodeinfo(smp, ibdev, port_num);
   goto bail;
  case 133:
   ret = recv_subn_get_guidinfo(smp, ibdev);
   goto bail;
  case 129:
   ret = recv_subn_get_portinfo(smp, ibdev, port_num);
   goto bail;
  case 130:
   ret = recv_subn_get_pkeytable(smp, ibdev);
   goto bail;
  case 128:
   if (dev->port_cap_flags & IB_PORT_SM_DISABLED) {
    ret = IB_MAD_RESULT_SUCCESS |
     IB_MAD_RESULT_CONSUMED;
    goto bail;
   }
   if (dev->port_cap_flags & IB_PORT_SM) {
    ret = IB_MAD_RESULT_SUCCESS;
    goto bail;
   }

  default:
   smp->status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply(smp);
   goto bail;
  }

 case 136:
  switch (smp->attr_id) {
  case 133:
   ret = recv_subn_set_guidinfo(smp, ibdev);
   goto bail;
  case 129:
   ret = recv_subn_set_portinfo(smp, ibdev, port_num);
   goto bail;
  case 130:
   ret = recv_subn_set_pkeytable(smp, ibdev);
   goto bail;
  case 128:
   if (dev->port_cap_flags & IB_PORT_SM_DISABLED) {
    ret = IB_MAD_RESULT_SUCCESS |
     IB_MAD_RESULT_CONSUMED;
    goto bail;
   }
   if (dev->port_cap_flags & IB_PORT_SM) {
    ret = IB_MAD_RESULT_SUCCESS;
    goto bail;
   }

  default:
   smp->status |= IB_SMP_UNSUP_METH_ATTR;
   ret = reply(smp);
   goto bail;
  }

 case 135:
 case 138:
 case 137:
 case 134:
 case 139:





  ret = IB_MAD_RESULT_SUCCESS;
  goto bail;
 default:
  smp->status |= IB_SMP_UNSUP_METHOD;
  ret = reply(smp);
 }

bail:
 return ret;
}
