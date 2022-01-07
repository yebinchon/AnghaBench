
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ccs; } ;
struct TYPE_3__ {int s0_3; int s1_3; int s2_3; unsigned int s3_3; } ;


 int CCS_SHIFT ;
 size_t E04 ;
 int S_CCS_BITNR ;
 char** error_message ;
 int gdb_cris_strcpy (scalar_t__*,char*) ;
 scalar_t__* output_buffer ;
 TYPE_2__ reg ;
 TYPE_1__ sreg ;

__attribute__((used)) static void insert_watchpoint(char type, int addr, int len)
{
 if (type < '1' || type > '4') {
  output_buffer[0] = 0;
  return;
 }



 if (type == '3')
  type = '4';

 if (type == '1') {


  if (sreg.s0_3 & 0x1) {

   gdb_cris_strcpy(output_buffer, error_message[E04]);
   return;
  }

  sreg.s1_3 = addr;
  sreg.s2_3 = (addr + len - 1);
  sreg.s0_3 |= 1;
 } else {
  int bp;
  unsigned int *bp_d_regs = &sreg.s3_3;
  for (bp = 0; bp < 6; bp++) {



   if (!(sreg.s0_3 & (0x3 << (2 + (bp * 4))))) {
    break;
   }
  }

  if (bp > 5) {

   gdb_cris_strcpy(output_buffer, error_message[E04]);
   return;
  }


  if (type == '3' || type == '4') {

   sreg.s0_3 |= (1 << (2 + bp * 4));
  }
  if (type == '2' || type == '4') {

   sreg.s0_3 |= (2 << (2 + bp * 4));
  }


  bp_d_regs[bp * 2] = addr;
  bp_d_regs[bp * 2 + 1] = (addr + len - 1);
 }


 reg.ccs |= (1 << (S_CCS_BITNR + CCS_SHIFT));
 gdb_cris_strcpy(output_buffer, "OK");
}
