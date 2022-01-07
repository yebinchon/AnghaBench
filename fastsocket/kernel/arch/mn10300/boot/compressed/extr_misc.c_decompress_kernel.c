
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moveparams {int dummy; } ;


 scalar_t__ CONFIG_KERNEL_TEXT_ADDRESS ;
 int barrier () ;
 int debugflag ;
 int gunzip () ;
 int kputs (char*) ;
 int makecrc () ;
 char* output_data ;

int decompress_kernel(struct moveparams *mv)
{





 output_data = (char *) CONFIG_KERNEL_TEXT_ADDRESS;

 makecrc();
 kputs("Uncompressing Linux... ");
 gunzip();
 kputs("Ok, booting the kernel.\n");
 return 0;
}
