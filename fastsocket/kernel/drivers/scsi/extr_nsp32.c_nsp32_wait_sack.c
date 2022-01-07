
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int BaseAddress; } ;
typedef TYPE_1__ nsp32_hw_data ;


 int ASSERT ;
 unsigned char BUSMON_ACK ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int NEGATE ;
 int NSP32_DEBUG_WAIT ;
 int REQSACK_TIMEOUT_TIME ;
 int SCSI_BUS_MONITOR ;
 int nsp32_dbg (int ,char*,int) ;
 int nsp32_msg (int ,char*,...) ;
 unsigned char nsp32_read1 (unsigned int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void nsp32_wait_sack(nsp32_hw_data *data, int state)
{
 unsigned int base = data->BaseAddress;
 int wait_time = 0;
 unsigned char bus, ack_bit;

 if (!((state == ASSERT) || (state == NEGATE))) {
  nsp32_msg(KERN_ERR, "unknown state designation");
 }

 ack_bit = (state == ASSERT ? BUSMON_ACK : 0);

 do {
  bus = nsp32_read1(base, SCSI_BUS_MONITOR);
  if ((bus & BUSMON_ACK) == ack_bit) {
   nsp32_dbg(NSP32_DEBUG_WAIT,
      "wait_time: %d", wait_time);
   return;
  }
  udelay(1);
  wait_time++;
 } while (wait_time < REQSACK_TIMEOUT_TIME);

 nsp32_msg(KERN_WARNING, "wait SACK timeout, ack_bit: 0x%x", ack_bit);
}
