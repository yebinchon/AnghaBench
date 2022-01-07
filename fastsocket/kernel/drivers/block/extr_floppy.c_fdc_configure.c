
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD_CONFIGURE ;
 scalar_t__ MORE_OUTPUT ;
 int fifo_depth ;
 scalar_t__ need_more_output () ;
 int no_fifo ;
 int output_byte (int) ;

__attribute__((used)) static int fdc_configure(void)
{

 output_byte(FD_CONFIGURE);
 if (need_more_output() != MORE_OUTPUT)
  return 0;
 output_byte(0);
 output_byte(0x10 | (no_fifo & 0x20) | (fifo_depth & 0xf));
 output_byte(0);

 return 1;
}
