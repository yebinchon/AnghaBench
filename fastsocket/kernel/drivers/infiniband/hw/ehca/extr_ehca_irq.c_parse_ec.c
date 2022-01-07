
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct ehca_sport {int saved_attr; void* port_state; } ;
struct TYPE_3__ {int name; } ;
struct ehca_shca {TYPE_1__ ib_device; struct ehca_sport* sport; } ;


 int EHCA_BMASK_GET (int ,int ) ;
 int IB_EVENT_CLIENT_REREGISTER ;
 int IB_EVENT_PORT_ACTIVE ;
 int IB_EVENT_PORT_ERR ;
 void* IB_PORT_ACTIVE ;
 void* IB_PORT_DOWN ;
 int NEQE_DISRUPTIVE ;
 int NEQE_EVENT_CODE ;
 int NEQE_PORT_AVAILABILITY ;
 int NEQE_PORT_NUMBER ;
 int NEQE_SPECIFIC_EVENT ;
 int dispatch_port_event (struct ehca_shca*,int,int ,char*) ;
 int ehca_err (TYPE_1__*,char*,...) ;
 int ehca_nr_ports ;
 int ehca_query_sma_attr (struct ehca_shca*,int,int *) ;
 int ehca_warn (TYPE_1__*,char*,int,...) ;
 int notify_port_conf_change (struct ehca_shca*,int) ;
 int replay_modify_qp (struct ehca_sport*) ;

__attribute__((used)) static void parse_ec(struct ehca_shca *shca, u64 eqe)
{
 u8 ec = EHCA_BMASK_GET(NEQE_EVENT_CODE, eqe);
 u8 port = EHCA_BMASK_GET(NEQE_PORT_NUMBER, eqe);
 u8 spec_event;
 struct ehca_sport *sport = &shca->sport[port - 1];

 switch (ec) {
 case 0x30:
  if (EHCA_BMASK_GET(NEQE_PORT_AVAILABILITY, eqe)) {




   if (ehca_nr_ports < 0)
    if (replay_modify_qp(sport))
     break;

   sport->port_state = IB_PORT_ACTIVE;
   dispatch_port_event(shca, port, IB_EVENT_PORT_ACTIVE,
         "is active");
   ehca_query_sma_attr(shca, port, &sport->saved_attr);
  } else {
   sport->port_state = IB_PORT_DOWN;
   dispatch_port_event(shca, port, IB_EVENT_PORT_ERR,
         "is inactive");
  }
  break;
 case 0x31:




  if (EHCA_BMASK_GET(NEQE_DISRUPTIVE, eqe)) {
   ehca_warn(&shca->ib_device, "disruptive port "
      "%d configuration change", port);

   sport->port_state = IB_PORT_DOWN;
   dispatch_port_event(shca, port, IB_EVENT_PORT_ERR,
         "is inactive");

   sport->port_state = IB_PORT_ACTIVE;
   dispatch_port_event(shca, port, IB_EVENT_PORT_ACTIVE,
         "is active");
   ehca_query_sma_attr(shca, port,
         &sport->saved_attr);
  } else
   notify_port_conf_change(shca, port);
  break;
 case 0x32:
  ehca_err(&shca->ib_device, "Adapter malfunction.");
  break;
 case 0x33:
  ehca_err(&shca->ib_device, "Traced stopped.");
  break;
 case 0x34:
  spec_event = EHCA_BMASK_GET(NEQE_SPECIFIC_EVENT, eqe);
  if (spec_event == 0x80)
   dispatch_port_event(shca, port,
         IB_EVENT_CLIENT_REREGISTER,
         "client reregister req.");
  else
   ehca_warn(&shca->ib_device, "Unknown util async "
      "event %x on port %x", spec_event, port);
  break;
 default:
  ehca_err(&shca->ib_device, "Unknown event code: %x on %s.",
    ec, shca->ib_device.name);
  break;
 }

 return;
}
