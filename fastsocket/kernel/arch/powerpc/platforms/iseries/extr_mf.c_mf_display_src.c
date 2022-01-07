
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int ce ;


 int memset (int*,int ,int) ;
 int signal_ce_msg (int*,int *) ;

void mf_display_src(u32 word)
{
 u8 ce[12];

 memset(ce, 0, sizeof(ce));
 ce[3] = 0x4a;
 ce[7] = 0x01;
 ce[8] = word >> 24;
 ce[9] = word >> 16;
 ce[10] = word >> 8;
 ce[11] = word;
 signal_ce_msg(ce, ((void*)0));
}
