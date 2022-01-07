
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSC_CR ;
 int PCC_AWER_B ;
 int getcsc (int ) ;
 int getpcc (int ) ;
 int setcsc (int ,int) ;
 int setpcc (int ,int) ;

__attribute__((used)) static void dnpc_unmap_flash(void)
{

 setcsc(CSC_CR, getcsc(CSC_CR) | 0x2);


 setpcc(PCC_AWER_B, getpcc(PCC_AWER_B) & ~0x02);


 setcsc(CSC_CR, getcsc(CSC_CR) & ~0x2);
}
