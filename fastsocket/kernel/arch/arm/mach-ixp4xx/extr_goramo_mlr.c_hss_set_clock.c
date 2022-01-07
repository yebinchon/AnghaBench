
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONTROL_HSS0_CLK_INT ;
 int CONTROL_HSS1_CLK_INT ;
 int EINVAL ;
 int output_control () ;
 int set_control (int,int) ;

__attribute__((used)) static int hss_set_clock(int port, unsigned int clock_type)
{
 int ctrl_int = port ? CONTROL_HSS1_CLK_INT : CONTROL_HSS0_CLK_INT;

 switch (clock_type) {
 case 130:
 case 129:
  set_control(ctrl_int, 0);
  output_control();
  return 129;

 case 128:
  set_control(ctrl_int, 1);
  output_control();
  return 128;

 default:
  return -EINVAL;
 }
}
