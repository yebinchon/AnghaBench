
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* ser3; void* ser2; void* ser1; int sser_ser_dma6_7; } ;
typedef TYPE_1__ reg_pinmux_rw_hwprot ;
typedef TYPE_1__ reg_clkgen_rw_clk_ctrl ;


 TYPE_1__ REG_RD (int ,int ,int ) ;
 int REG_WR (int ,int ,int ,TYPE_1__) ;
 int* R_GEN_CONFIG ;
 int* R_SERIAL0_BAUD ;
 int* R_SERIAL0_TR_CTRL ;
 scalar_t__* R_SERIAL0_XOFF ;
 int* R_SERIAL1_BAUD ;
 int* R_SERIAL1_TR_CTRL ;
 scalar_t__* R_SERIAL1_XOFF ;
 int* R_SERIAL2_BAUD ;
 int* R_SERIAL2_TR_CTRL ;
 scalar_t__* R_SERIAL2_XOFF ;
 int* R_SERIAL3_BAUD ;
 int* R_SERIAL3_TR_CTRL ;
 scalar_t__* R_SERIAL3_XOFF ;
 int clkgen ;
 int gunzip () ;
 int inbuf ;
 int input_data ;
 int makecrc () ;
 int pinmux ;
 int puts (char*) ;
 int regi_clkgen ;
 int regi_pinmux ;
 int regi_ser0 ;
 int regi_ser1 ;
 int regi_ser2 ;
 int regi_ser3 ;
 int regk_clkgen_yes ;
 void* regk_pinmux_yes ;
 int rw_clk_ctrl ;
 int rw_hwprot ;
 int serial_setup (int ) ;
 int setup_normal_output_buffer () ;

void decompress_kernel(void)
{
 char revision;
 char compile_rev;
 compile_rev = 10;


 inbuf = input_data;
 setup_normal_output_buffer();

 makecrc();

 __asm__ volatile ("move $vr,%0" : "=rm" (revision));
 if (revision < compile_rev) {



  puts("You need an ETRAX 100LX to run linux 2.6\n");

  while(1);
 }

 puts("Uncompressing Linux...\n");
 gunzip();
 puts("Done. Now booting the kernel\n");
}
