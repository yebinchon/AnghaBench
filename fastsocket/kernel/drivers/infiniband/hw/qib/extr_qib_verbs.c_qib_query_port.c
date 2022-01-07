
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct qib_pportdata {int ibmtu; int vls_supported; int link_speed_active; int link_width_active; int lastibcstat; int lmc; scalar_t__ lid; } ;
struct qib_ibport {int subnet_timeout; int qkey_violations; int pkey_violations; int port_cap_flags; int sm_sl; int sm_lid; } ;
struct qib_devdata {int (* f_ibphys_portstate ) (int ) ;int (* f_iblink_state ) (int ) ;} ;
struct ib_port_attr {int max_msg_sz; int active_mtu; int subnet_timeout; void* max_mtu; scalar_t__ init_type_reply; int max_vl_num; int active_speed; int active_width; int qkey_viol_cntr; int bad_pkey_cntr; int pkey_tbl_len; int gid_tbl_len; int port_cap_flags; int phys_state; int state; int sm_sl; int sm_lid; int lmc; scalar_t__ lid; } ;
struct ib_device {int dummy; } ;
typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;


 int IB_LID_PERMISSIVE ;
 int IB_MTU_1024 ;
 int IB_MTU_2048 ;
 int IB_MTU_256 ;
 void* IB_MTU_4096 ;
 int IB_MTU_512 ;
 int QIB_GUIDS_PER_PORT ;
 scalar_t__ be16_to_cpu (int ) ;
 struct qib_devdata* dd_from_ibdev (struct ib_device*) ;
 int memset (struct ib_port_attr*,int ,int) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int qib_get_npkeys (struct qib_devdata*) ;
 void* qib_ibmtu ;
 int qib_num_vls (int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int qib_query_port(struct ib_device *ibdev, u8 port,
     struct ib_port_attr *props)
{
 struct qib_devdata *dd = dd_from_ibdev(ibdev);
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 enum ib_mtu mtu;
 u16 lid = ppd->lid;

 memset(props, 0, sizeof(*props));
 props->lid = lid ? lid : be16_to_cpu(IB_LID_PERMISSIVE);
 props->lmc = ppd->lmc;
 props->sm_lid = ibp->sm_lid;
 props->sm_sl = ibp->sm_sl;
 props->state = dd->f_iblink_state(ppd->lastibcstat);
 props->phys_state = dd->f_ibphys_portstate(ppd->lastibcstat);
 props->port_cap_flags = ibp->port_cap_flags;
 props->gid_tbl_len = QIB_GUIDS_PER_PORT;
 props->max_msg_sz = 0x80000000;
 props->pkey_tbl_len = qib_get_npkeys(dd);
 props->bad_pkey_cntr = ibp->pkey_violations;
 props->qkey_viol_cntr = ibp->qkey_violations;
 props->active_width = ppd->link_width_active;

 props->active_speed = ppd->link_speed_active;
 props->max_vl_num = qib_num_vls(ppd->vls_supported);
 props->init_type_reply = 0;

 props->max_mtu = qib_ibmtu ? qib_ibmtu : IB_MTU_4096;
 switch (ppd->ibmtu) {
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
 props->subnet_timeout = ibp->subnet_timeout;

 return 0;
}
