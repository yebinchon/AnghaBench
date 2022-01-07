
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_3__ {int name; } ;
struct ehca_shca {TYPE_1__ ib_device; } ;


 int EHCA_BMASK_GET (int ,int ) ;
 int EQE_EE_IDENTIFIER ;
 int IB_EVENT_COMM_EST ;
 int IB_EVENT_PATH_MIG ;
 int IB_EVENT_QP_FATAL ;
 int IB_EVENT_SQ_DRAINED ;
 int IB_EVENT_SRQ_LIMIT_REACHED ;
 int cq_event_callback (struct ehca_shca*,int ) ;
 int ehca_err (TYPE_1__*,char*,...) ;
 int ehca_info (TYPE_1__*,char*) ;
 int qp_event_callback (struct ehca_shca*,int ,int ,int) ;

__attribute__((used)) static void parse_identifier(struct ehca_shca *shca, u64 eqe)
{
 u8 identifier = EHCA_BMASK_GET(EQE_EE_IDENTIFIER, eqe);

 switch (identifier) {
 case 0x02:
  qp_event_callback(shca, eqe, IB_EVENT_PATH_MIG, 0);
  break;
 case 0x03:
  qp_event_callback(shca, eqe, IB_EVENT_COMM_EST, 0);
  break;
 case 0x04:
  qp_event_callback(shca, eqe, IB_EVENT_SQ_DRAINED, 0);
  break;
 case 0x05:
 case 0x06:
  qp_event_callback(shca, eqe, IB_EVENT_QP_FATAL, 1);
  break;
 case 0x07:
 case 0x08:
  cq_event_callback(shca, eqe);
  break;
 case 0x09:
  ehca_err(&shca->ib_device, "MRMWPTE error.");
  break;
 case 0x0A:
  ehca_err(&shca->ib_device, "Port event.");
  break;
 case 0x0B:
  ehca_err(&shca->ib_device, "MR access error.");
  break;
 case 0x0C:
  ehca_err(&shca->ib_device, "EQ error.");
  break;
 case 0x0D:
  ehca_err(&shca->ib_device, "P/Q_Key mismatch.");
  break;
 case 0x10:
  ehca_err(&shca->ib_device, "Sampling complete.");
  break;
 case 0x11:
  ehca_err(&shca->ib_device, "Unaffiliated access error.");
  break;
 case 0x12:
  ehca_err(&shca->ib_device, "Path migrating.");
  break;
 case 0x13:
  ehca_err(&shca->ib_device, "Interface trace stopped.");
  break;
 case 0x14:
  ehca_info(&shca->ib_device, "First error capture available");
  break;
 case 0x15:
  qp_event_callback(shca, eqe, IB_EVENT_SRQ_LIMIT_REACHED, 0);
  break;
 default:
  ehca_err(&shca->ib_device, "Unknown identifier: %x on %s.",
    identifier, shca->ib_device.name);
  break;
 }

 return;
}
