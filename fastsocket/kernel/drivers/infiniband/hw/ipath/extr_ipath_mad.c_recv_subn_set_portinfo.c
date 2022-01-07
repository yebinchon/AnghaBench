
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ipath_ibdev {scalar_t__ sm_lid; int mkeyprot; int sm_sl; int subnet_timeout; scalar_t__ qkey_violations; int z_pkey_violations; scalar_t__ mkey_violations; int vl_high_limit; void* mkey_lease_period; int gid_prefix; int mkey; struct ipath_devdata* dd; } ;
struct ipath_devdata {scalar_t__ ipath_lid; int ipath_lmc; int ipath_link_width_supported; int ipath_link_speed_supported; } ;
struct ib_smp {int status; int attr_mod; scalar_t__ data; } ;
struct ib_port_info {int mkeyprot_resv_lmc; int link_width_enabled; int linkspeedactive_enabled; int portphysstate_linkdown; int neighbormtu_mastersmsl; int operationalvl_pei_peo_fpi_fpo; scalar_t__ mkey_violations; scalar_t__ pkey_violations; scalar_t__ qkey_violations; int localphyerrors_overrunerrors; int clientrereg_resv_subnetto; int linkspeed_portstate; int vl_high_limit; int sm_lid; int lid; int mkey_lease_period; int gid_prefix; int mkey; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; struct ib_device* device; } ;
struct ib_device {scalar_t__ phys_port_cnt; } ;


 int IB_EVENT_CLIENT_REREGISTER ;
 int IB_EVENT_LID_CHANGE ;
 int IB_EVENT_SM_CHANGE ;
 int IB_MAD_RESULT_CONSUMED ;
 int IB_MAD_RESULT_SUCCESS ;
 int IB_SMP_INVALID_FIELD ;
 scalar_t__ IPATH_IB_LINKACTIVE ;
 scalar_t__ IPATH_IB_LINKARM ;
 scalar_t__ IPATH_IB_LINKDOWN ;
 scalar_t__ IPATH_IB_LINKDOWN_DISABLE ;
 scalar_t__ IPATH_IB_LINKDOWN_ONLY ;
 scalar_t__ IPATH_IB_LINKDOWN_SLEEP ;
 int IPATH_LINKACTIVE ;
 int IPATH_LINKARMED ;
 int IPATH_LINKINIT ;
 scalar_t__ IPATH_MULTICAST_LID_BASE ;
 void* be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int ib_dispatch_event (struct ib_event*) ;
 int ipath_get_cr_errpkey (struct ipath_devdata*) ;
 int ipath_mtu4096 ;
 int ipath_set_lid (struct ipath_devdata*,scalar_t__,int) ;
 int ipath_set_linkstate (struct ipath_devdata*,scalar_t__) ;
 int ipath_set_mtu (struct ipath_devdata*,int) ;
 int ipath_wait_linkstate (struct ipath_devdata*,int,int) ;
 int recv_subn_get_portinfo (struct ib_smp*,struct ib_device*,int) ;
 int set_link_speed_enabled (struct ipath_devdata*,int) ;
 int set_link_width_enabled (struct ipath_devdata*,int) ;
 int set_linkdowndefaultstate (struct ipath_devdata*,int) ;
 scalar_t__ set_overrunthreshold (struct ipath_devdata*,int) ;
 scalar_t__ set_phyerrthreshold (struct ipath_devdata*,int) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int recv_subn_set_portinfo(struct ib_smp *smp,
      struct ib_device *ibdev, u8 port)
{
 struct ib_port_info *pip = (struct ib_port_info *)smp->data;
 struct ib_event event;
 struct ipath_ibdev *dev;
 struct ipath_devdata *dd;
 char clientrereg = 0;
 u16 lid, smlid;
 u8 lwe;
 u8 lse;
 u8 state;
 u16 lstate;
 u32 mtu;
 int ret, ore;

 if (be32_to_cpu(smp->attr_mod) > ibdev->phys_port_cnt)
  goto err;

 dev = to_idev(ibdev);
 dd = dev->dd;
 event.device = ibdev;
 event.element.port_num = port;

 dev->mkey = pip->mkey;
 dev->gid_prefix = pip->gid_prefix;
 dev->mkey_lease_period = be16_to_cpu(pip->mkey_lease_period);

 lid = be16_to_cpu(pip->lid);
 if (dd->ipath_lid != lid ||
     dd->ipath_lmc != (pip->mkeyprot_resv_lmc & 7)) {

  if (lid == 0 || lid >= IPATH_MULTICAST_LID_BASE)
   goto err;
  ipath_set_lid(dd, lid, pip->mkeyprot_resv_lmc & 7);
  event.event = IB_EVENT_LID_CHANGE;
  ib_dispatch_event(&event);
 }

 smlid = be16_to_cpu(pip->sm_lid);
 if (smlid != dev->sm_lid) {

  if (smlid == 0 || smlid >= IPATH_MULTICAST_LID_BASE)
   goto err;
  dev->sm_lid = smlid;
  event.event = IB_EVENT_SM_CHANGE;
  ib_dispatch_event(&event);
 }


 lwe = pip->link_width_enabled;
 if (lwe) {
  if (lwe == 0xFF)
   lwe = dd->ipath_link_width_supported;
  else if (lwe >= 16 || (lwe & ~dd->ipath_link_width_supported))
   goto err;
  set_link_width_enabled(dd, lwe);
 }


 lse = pip->linkspeedactive_enabled & 0xF;
 if (lse) {
  if (lse == 15)
   lse = dd->ipath_link_speed_supported;
  else if (lse >= 8 || (lse & ~dd->ipath_link_speed_supported))
   goto err;
  set_link_speed_enabled(dd, lse);
 }


 switch (pip->portphysstate_linkdown & 0xF) {
 case 0:
  break;
 case 1:
  if (set_linkdowndefaultstate(dd, 1))
   goto err;
  break;
 case 2:
  if (set_linkdowndefaultstate(dd, 0))
   goto err;
  break;
 default:
  goto err;
 }

 dev->mkeyprot = pip->mkeyprot_resv_lmc >> 6;
 dev->vl_high_limit = pip->vl_high_limit;

 switch ((pip->neighbormtu_mastersmsl >> 4) & 0xF) {
 case 134:
  mtu = 256;
  break;
 case 132:
  mtu = 512;
  break;
 case 136:
  mtu = 1024;
  break;
 case 135:
  mtu = 2048;
  break;
 case 133:
  if (!ipath_mtu4096)
   goto err;
  mtu = 4096;
  break;
 default:

  goto err;
 }
 ipath_set_mtu(dd, mtu);

 dev->sm_sl = pip->neighbormtu_mastersmsl & 0xF;


 if (((pip->operationalvl_pei_peo_fpi_fpo >> 4) & 0xF) > 1)
  goto err;

 if (pip->mkey_violations == 0)
  dev->mkey_violations = 0;





 if (pip->pkey_violations == 0)
  dev->z_pkey_violations = ipath_get_cr_errpkey(dd);

 if (pip->qkey_violations == 0)
  dev->qkey_violations = 0;

 ore = pip->localphyerrors_overrunerrors;
 if (set_phyerrthreshold(dd, (ore >> 4) & 0xF))
  goto err;

 if (set_overrunthreshold(dd, (ore & 0xF)))
  goto err;

 dev->subnet_timeout = pip->clientrereg_resv_subnetto & 0x1F;

 if (pip->clientrereg_resv_subnetto & 0x80) {
  clientrereg = 1;
  event.event = IB_EVENT_CLIENT_REREGISTER;
  ib_dispatch_event(&event);
 }







 state = pip->linkspeed_portstate & 0xF;
 lstate = (pip->portphysstate_linkdown >> 4) & 0xF;
 if (lstate && !(state == 129 || state == 128))
  goto err;





 switch (state) {
 case 128:
  if (lstate == 0)
   break;

 case 129:
  if (lstate == 0)
   lstate = IPATH_IB_LINKDOWN_ONLY;
  else if (lstate == 1)
   lstate = IPATH_IB_LINKDOWN_SLEEP;
  else if (lstate == 2)
   lstate = IPATH_IB_LINKDOWN;
  else if (lstate == 3)
   lstate = IPATH_IB_LINKDOWN_DISABLE;
  else
   goto err;
  ipath_set_linkstate(dd, lstate);
  if (lstate == IPATH_IB_LINKDOWN_DISABLE) {
   ret = IB_MAD_RESULT_SUCCESS | IB_MAD_RESULT_CONSUMED;
   goto done;
  }
  ipath_wait_linkstate(dd, IPATH_LINKINIT | IPATH_LINKARMED |
    IPATH_LINKACTIVE, 1000);
  break;
 case 130:
  ipath_set_linkstate(dd, IPATH_IB_LINKARM);
  break;
 case 131:
  ipath_set_linkstate(dd, IPATH_IB_LINKACTIVE);
  break;
 default:

  goto err;
 }

 ret = recv_subn_get_portinfo(smp, ibdev, port);

 if (clientrereg)
  pip->clientrereg_resv_subnetto |= 0x80;

 goto done;

err:
 smp->status |= IB_SMP_INVALID_FIELD;
 ret = recv_subn_get_portinfo(smp, ibdev, port);

done:
 return ret;
}
