
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u64 ;
typedef scalar_t__ u16 ;
struct ipath_ibdev {int subnet_timeout; int qkey_violations; scalar_t__ z_pkey_violations; int port_cap_flags; int sm_sl; int sm_lid; struct ipath_devdata* dd; } ;
struct ipath_devdata {size_t ipath_lastibcstat; size_t ibcs_lts_mask; int ipath_ibmtu; int ipath_link_speed_active; int ipath_link_width_active; int ipath_lmc; scalar_t__ ipath_lid; } ;
struct ib_port_attr {int gid_tbl_len; int max_msg_sz; int max_vl_num; int active_mtu; int subnet_timeout; void* max_mtu; scalar_t__ init_type_reply; int active_speed; int active_width; int qkey_viol_cntr; scalar_t__ bad_pkey_cntr; int pkey_tbl_len; int port_cap_flags; int phys_state; scalar_t__ state; int sm_sl; int sm_lid; int lmc; scalar_t__ lid; } ;
struct ib_device {int dummy; } ;
typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;


 int IB_LID_PERMISSIVE ;
 int IB_MTU_1024 ;
 void* IB_MTU_2048 ;
 int IB_MTU_256 ;
 void* IB_MTU_4096 ;
 int IB_MTU_512 ;
 scalar_t__ be16_to_cpu (int ) ;
 int * ipath_cvt_physportstate ;
 scalar_t__ ipath_get_cr_errpkey (struct ipath_devdata*) ;
 int ipath_get_npkeys (struct ipath_devdata*) ;
 scalar_t__ ipath_ib_linkstate (struct ipath_devdata*,size_t) ;
 scalar_t__ ipath_mtu4096 ;
 int memset (struct ib_port_attr*,int ,int) ;
 struct ipath_ibdev* to_idev (struct ib_device*) ;

__attribute__((used)) static int ipath_query_port(struct ib_device *ibdev,
       u8 port, struct ib_port_attr *props)
{
 struct ipath_ibdev *dev = to_idev(ibdev);
 struct ipath_devdata *dd = dev->dd;
 enum ib_mtu mtu;
 u16 lid = dd->ipath_lid;
 u64 ibcstat;

 memset(props, 0, sizeof(*props));
 props->lid = lid ? lid : be16_to_cpu(IB_LID_PERMISSIVE);
 props->lmc = dd->ipath_lmc;
 props->sm_lid = dev->sm_lid;
 props->sm_sl = dev->sm_sl;
 ibcstat = dd->ipath_lastibcstat;

 props->state = ipath_ib_linkstate(dd, ibcstat) + 1;


 props->phys_state =
  ipath_cvt_physportstate[dd->ipath_lastibcstat &
  dd->ibcs_lts_mask];
 props->port_cap_flags = dev->port_cap_flags;
 props->gid_tbl_len = 1;
 props->max_msg_sz = 0x80000000;
 props->pkey_tbl_len = ipath_get_npkeys(dd);
 props->bad_pkey_cntr = ipath_get_cr_errpkey(dd) -
  dev->z_pkey_violations;
 props->qkey_viol_cntr = dev->qkey_violations;
 props->active_width = dd->ipath_link_width_active;

 props->active_speed = dd->ipath_link_speed_active;
 props->max_vl_num = 1;
 props->init_type_reply = 0;

 props->max_mtu = ipath_mtu4096 ? IB_MTU_4096 : IB_MTU_2048;
 switch (dd->ipath_ibmtu) {
 case 4096:
  mtu = IB_MTU_4096;
  break;
 case 2048:
  mtu = IB_MTU_2048;
  break;
 case 1024:
  mtu = IB_MTU_1024;
  break;
 case 512:
  mtu = IB_MTU_512;
  break;
 case 256:
  mtu = IB_MTU_256;
  break;
 default:
  mtu = IB_MTU_2048;
 }
 props->active_mtu = mtu;
 props->subnet_timeout = dev->subnet_timeout;

 return 0;
}
