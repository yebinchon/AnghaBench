
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSC_CR ;
 int CSC_MMSWAR ;
 int CSC_MMSWDSR ;
 int CSC_PCCMDCR ;
 int PCC_AWER_B ;
 int PCC_MWAOR_1_Hi ;
 int PCC_MWAOR_1_Lo ;
 int PCC_MWEAR_1_Hi ;
 int PCC_MWEAR_1_Lo ;
 int PCC_MWSAR_1_Hi ;
 int PCC_MWSAR_1_Lo ;
 int getcsc (int ) ;
 int getpcc (int ) ;
 int setcsc (int ,int) ;
 int setpcc (int ,int) ;

__attribute__((used)) static void dnpc_map_flash(unsigned long flash_base, unsigned long flash_size)
{
 unsigned long flash_end = flash_base + flash_size - 1;





 setcsc(CSC_CR, getcsc(CSC_CR) | 0x2);

 setcsc(CSC_PCCMDCR, getcsc(CSC_PCCMDCR) & ~1);





 setpcc(PCC_MWSAR_1_Lo, (flash_base >> 12) & 0xff);
 setpcc(PCC_MWSAR_1_Hi, (flash_base >> 20) & 0x3f);
 setpcc(PCC_MWEAR_1_Lo, (flash_end >> 12) & 0xff);
 setpcc(PCC_MWEAR_1_Hi, (flash_end >> 20) & 0x3f);


 setpcc(PCC_MWAOR_1_Lo, ((0 - flash_base) >> 12) & 0xff);
 setpcc(PCC_MWAOR_1_Hi, ((0 - flash_base)>> 20) & 0x3f);


 setcsc(CSC_MMSWAR, getcsc(CSC_MMSWAR) & ~0x11);


 setcsc(CSC_MMSWDSR, getcsc(CSC_MMSWDSR) & ~0x03);


 setpcc(PCC_AWER_B, getpcc(PCC_AWER_B) | 0x02);


 setcsc(CSC_CR, getcsc(CSC_CR) & ~0x2);
}
