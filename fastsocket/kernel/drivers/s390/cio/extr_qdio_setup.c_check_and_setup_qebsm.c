
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rflags; } ;
struct qdio_irq {unsigned long sch_token; TYPE_1__ qib; } ;


 unsigned char AC1_SC_QEBSM_AVAILABLE ;
 unsigned char AC1_SC_QEBSM_ENABLED ;
 int DBF_EVENT (char*,...) ;
 int QIB_RFLAGS_ENABLE_QEBSM ;

__attribute__((used)) static void check_and_setup_qebsm(struct qdio_irq *irq_ptr,
      unsigned char qdioac, unsigned long token)
{
 if (!(irq_ptr->qib.rflags & QIB_RFLAGS_ENABLE_QEBSM))
  goto no_qebsm;
 if (!(qdioac & AC1_SC_QEBSM_AVAILABLE) ||
     (!(qdioac & AC1_SC_QEBSM_ENABLED)))
  goto no_qebsm;

 irq_ptr->sch_token = token;

 DBF_EVENT("V=V:1");
 DBF_EVENT("%8lx", irq_ptr->sch_token);
 return;

no_qebsm:
 irq_ptr->sch_token = 0;
 irq_ptr->qib.rflags &= ~QIB_RFLAGS_ENABLE_QEBSM;
 DBF_EVENT("noV=V");
}
