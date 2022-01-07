
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_hardware {unsigned int ll_mtu; scalar_t__ hw_version; int lock; TYPE_1__* memory_info_regs; scalar_t__ base_port; scalar_t__ tx_ready; } ;
typedef unsigned short __le16 ;
struct TYPE_2__ {int memreg_rx; } ;


 int BUG_ON (int) ;
 unsigned short DCR_TXDONE ;
 scalar_t__ HW_VERSION_1 ;
 scalar_t__ HW_VERSION_2 ;
 scalar_t__ IODCR ;
 scalar_t__ IODWR ;
 int MEMRX_RX ;
 unsigned short cpu_to_le16 (unsigned short) ;
 int dump_data_bytes (char*,unsigned char*,unsigned int) ;
 int end_write_timing (unsigned int) ;
 scalar_t__ ipwireless_debug ;
 int outw (unsigned short,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int start_timing () ;
 int swap_packet_bitfield_to_le (unsigned char*) ;
 int writew (int ,int *) ;

__attribute__((used)) static void do_send_fragment(struct ipw_hardware *hw, unsigned char *data,
       unsigned length)
{
 unsigned i;
 unsigned long flags;

 start_timing();
 BUG_ON(length > hw->ll_mtu);

 if (ipwireless_debug)
  dump_data_bytes("send", data, length);

 spin_lock_irqsave(&hw->lock, flags);

 hw->tx_ready = 0;
 swap_packet_bitfield_to_le(data);

 if (hw->hw_version == HW_VERSION_1) {
  outw((unsigned short) length, hw->base_port + IODWR);

  for (i = 0; i < length; i += 2) {
   unsigned short d = data[i];
   __le16 raw_data;

   if (i + 1 < length)
    d |= data[i + 1] << 8;
   raw_data = cpu_to_le16(d);
   outw(raw_data, hw->base_port + IODWR);
  }

  outw(DCR_TXDONE, hw->base_port + IODCR);
 } else if (hw->hw_version == HW_VERSION_2) {
  outw((unsigned short) length, hw->base_port);

  for (i = 0; i < length; i += 2) {
   unsigned short d = data[i];
   __le16 raw_data;

   if (i + 1 < length)
    d |= data[i + 1] << 8;
   raw_data = cpu_to_le16(d);
   outw(raw_data, hw->base_port);
  }
  while ((i & 3) != 2) {
   outw((unsigned short) 0xDEAD, hw->base_port);
   i += 2;
  }
  writew(MEMRX_RX, &hw->memory_info_regs->memreg_rx);
 }

 spin_unlock_irqrestore(&hw->lock, flags);

 end_write_timing(length);
}
