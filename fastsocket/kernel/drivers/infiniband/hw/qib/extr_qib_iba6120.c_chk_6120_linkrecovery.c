
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct qib_devdata {TYPE_1__* cspec; int pport; } ;
struct TYPE_2__ {scalar_t__ lastlinkrecov; } ;


 scalar_t__ IB_PORT_ACTIVE ;
 int QIB_IB_LINKDOWN ;
 int cr_iblinkerrrecov ;
 scalar_t__ qib_6120_iblink_state (int ) ;
 int qib_set_linkstate (int ,int ) ;
 scalar_t__ read_6120_creg32 (struct qib_devdata*,int ) ;

__attribute__((used)) static int chk_6120_linkrecovery(struct qib_devdata *dd, u64 ibcs)
{
 int ret = 1;
 u32 ibstate = qib_6120_iblink_state(ibcs);
 u32 linkrecov = read_6120_creg32(dd, cr_iblinkerrrecov);

 if (linkrecov != dd->cspec->lastlinkrecov) {

  dd->cspec->lastlinkrecov = 0;
  qib_set_linkstate(dd->pport, QIB_IB_LINKDOWN);
  ret = 0;
 }
 if (ibstate == IB_PORT_ACTIVE)
  dd->cspec->lastlinkrecov =
   read_6120_creg32(dd, cr_iblinkerrrecov);
 return ret;
}
