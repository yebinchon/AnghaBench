
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ehea_eqe {struct ehea_eqe* entry; } ;
struct ehea_adapter {TYPE_1__* neq; int handle; } ;
struct TYPE_2__ {int fw_handle; } ;


 int EHEA_BMASK_SET (int ,int) ;
 int NELR_ADAPTER_MALFUNC ;
 int NELR_PORTSTATE_CHG ;
 int NELR_PORT_MALFUNC ;
 int ehea_debug (char*,struct ehea_eqe*) ;
 int ehea_h_reset_events (int ,int ,int) ;
 int ehea_parse_eqe (struct ehea_adapter*,struct ehea_eqe*) ;
 struct ehea_eqe* ehea_poll_eq (TYPE_1__*) ;

__attribute__((used)) static void ehea_neq_tasklet(unsigned long data)
{
 struct ehea_adapter *adapter = (struct ehea_adapter *)data;
 struct ehea_eqe *eqe;
 u64 event_mask;

 eqe = ehea_poll_eq(adapter->neq);
 ehea_debug("eqe=%p", eqe);

 while (eqe) {
  ehea_debug("*eqe=%lx", eqe->entry);
  ehea_parse_eqe(adapter, eqe->entry);
  eqe = ehea_poll_eq(adapter->neq);
  ehea_debug("next eqe=%p", eqe);
 }

 event_mask = EHEA_BMASK_SET(NELR_PORTSTATE_CHG, 1)
     | EHEA_BMASK_SET(NELR_ADAPTER_MALFUNC, 1)
     | EHEA_BMASK_SET(NELR_PORT_MALFUNC, 1);

 ehea_h_reset_events(adapter->handle,
       adapter->neq->fw_handle, event_mask);
}
