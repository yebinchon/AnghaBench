
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int VIA1B_vRTCClk ;
 int VIA1B_vRTCEnb ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 size_t vBufB ;
 int* via1 ;
 int via_pram_readbyte () ;
 int via_pram_writebyte (int) ;

__attribute__((used)) static void via_pram_command(int command, __u8 *data)
{
 unsigned long flags;
 int is_read;

 local_irq_save(flags);



 via1[vBufB] = (via1[vBufB] | VIA1B_vRTCClk) & ~VIA1B_vRTCEnb;

 if (command & 0xFF00) {
  via_pram_writebyte((command & 0xFF00) >> 8);
  via_pram_writebyte(command & 0xFF);
  is_read = command & 0x8000;
 } else {
  via_pram_writebyte(command);
  is_read = command & 0x80;
 }
 if (is_read) {
  *data = via_pram_readbyte();
 } else {
  via_pram_writebyte(*data);
 }



 via1[vBufB] |= VIA1B_vRTCEnb;

 local_irq_restore(flags);
}
