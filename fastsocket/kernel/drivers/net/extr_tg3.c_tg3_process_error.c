
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int dev; } ;


 int ERROR_PROCESSED ;
 int HOSTCC_FLOW_ATTN ;
 int HOSTCC_FLOW_ATTN_MBUF_LWM ;
 int MSGINT_STATUS ;
 int MSGINT_STATUS_MSI_REQ ;
 int RDMAC_STATUS ;
 int WDMAC_STATUS ;
 int netdev_err (int ,char*) ;
 int tg3_dump_state (struct tg3*) ;
 scalar_t__ tg3_flag (struct tg3*,int ) ;
 int tg3_flag_set (struct tg3*,int ) ;
 int tg3_reset_task_schedule (struct tg3*) ;
 int tr32 (int ) ;

__attribute__((used)) static void tg3_process_error(struct tg3 *tp)
{
 u32 val;
 bool real_error = 0;

 if (tg3_flag(tp, ERROR_PROCESSED))
  return;


 val = tr32(HOSTCC_FLOW_ATTN);
 if (val & ~HOSTCC_FLOW_ATTN_MBUF_LWM) {
  netdev_err(tp->dev, "FLOW Attention error.  Resetting chip.\n");
  real_error = 1;
 }

 if (tr32(MSGINT_STATUS) & ~MSGINT_STATUS_MSI_REQ) {
  netdev_err(tp->dev, "MSI Status error.  Resetting chip.\n");
  real_error = 1;
 }

 if (tr32(RDMAC_STATUS) || tr32(WDMAC_STATUS)) {
  netdev_err(tp->dev, "DMA Status error.  Resetting chip.\n");
  real_error = 1;
 }

 if (!real_error)
  return;

 tg3_dump_state(tp);

 tg3_flag_set(tp, ERROR_PROCESSED);
 tg3_reset_task_schedule(tp);
}
