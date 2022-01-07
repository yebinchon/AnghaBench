
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s0_3; unsigned int s3_3; scalar_t__ s2_3; scalar_t__ s1_3; } ;


 size_t E04 ;
 char** error_message ;
 int gdb_cris_strcpy (scalar_t__*,char*) ;
 scalar_t__* output_buffer ;
 TYPE_1__ sreg ;

__attribute__((used)) static void remove_watchpoint(char type, int addr, int len)
{







 if (type < '1' || type > '4') {
  output_buffer[0] = 0;
  return;
 }



 if (type == '3')
  type = '4';

 if (type == '1') {


  if (!(sreg.s0_3 & 0x1)) {

   gdb_cris_strcpy(output_buffer, error_message[E04]);
   return;
  }

  sreg.s1_3 = 0;
  sreg.s2_3 = 0;
  sreg.s0_3 &= ~1;
 } else {
  int bp;
  unsigned int *bp_d_regs = &sreg.s3_3;







  for (bp = 0; bp < 6; bp++) {
   if (bp_d_regs[bp * 2] == addr &&
       bp_d_regs[bp * 2 + 1] == (addr + len - 1)) {

    int bitpos = 2 + bp * 4;
    int rw_bits;


    rw_bits = (sreg.s0_3 & (0x3 << bitpos)) >> bitpos;

    if ((type == '3' && rw_bits == 0x1) ||
        (type == '2' && rw_bits == 0x2) ||
        (type == '4' && rw_bits == 0x3)) {

     break;
    }
   }
  }

  if (bp > 5) {

   gdb_cris_strcpy(output_buffer, error_message[E04]);
   return;
  }




  sreg.s0_3 &= ~(3 << (2 + (bp * 4)));
  bp_d_regs[bp * 2] = 0;
  bp_d_regs[bp * 2 + 1] = 0;
 }


 gdb_cris_strcpy(output_buffer, "OK");
}
