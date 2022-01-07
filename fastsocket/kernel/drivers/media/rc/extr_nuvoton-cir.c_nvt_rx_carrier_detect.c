
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvt_dev {int pkts; int* buf; } ;


 int BUF_LEN_MASK ;
 int BUF_PULSE_BIT ;
 int CIR_FCCH ;
 int CIR_FCCL ;
 int KERN_NOTICE ;
 int MAX_CARRIER ;
 int MIN_CARRIER ;
 int MS_TO_NS (int) ;
 int SAMPLE_PERIOD ;
 int nvt_cir_reg_read (struct nvt_dev*,int ) ;
 int nvt_dbg (char*,...) ;
 int nvt_pr (int ,char*,int,int) ;

__attribute__((used)) static u32 nvt_rx_carrier_detect(struct nvt_dev *nvt)
{
 u32 count, carrier, duration = 0;
 int i;

 count = nvt_cir_reg_read(nvt, CIR_FCCL) |
  nvt_cir_reg_read(nvt, CIR_FCCH) << 8;

 for (i = 0; i < nvt->pkts; i++) {
  if (nvt->buf[i] & BUF_PULSE_BIT)
   duration += nvt->buf[i] & BUF_LEN_MASK;
 }

 duration *= SAMPLE_PERIOD;

 if (!count || !duration) {
  nvt_pr(KERN_NOTICE, "Unable to determine carrier! (c:%u, d:%u)",
         count, duration);
  return 0;
 }

 carrier = MS_TO_NS(count) / duration;

 if ((carrier > MAX_CARRIER) || (carrier < MIN_CARRIER))
  nvt_dbg("WTF? Carrier frequency out of range!");

 nvt_dbg("Carrier frequency: %u (count %u, duration %u)",
  carrier, count, duration);

 return carrier;
}
