
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mem2hex (char*,unsigned char*,int) ;
 char* output_buffer ;
 int putpacket (char*) ;

void
putDebugString(const unsigned char *str, int len)
{

 asm("spchere:");
 asm("move $spc, $r10");
 asm("cmp.d spchere, $r10");
 asm("bne nosstep");
 asm("nop");
 asm("move.d spccont, $r10");
 asm("move $r10, $spc");
 asm("nosstep:");

        output_buffer[0] = 'O';
        mem2hex(&output_buffer[1], (unsigned char *)str, len);
        putpacket(output_buffer);

 asm("spccont:");
}
