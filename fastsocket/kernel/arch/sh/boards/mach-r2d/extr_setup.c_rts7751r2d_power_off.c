
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PA_POWOFF ;
 int ctrl_outw (int,int ) ;

__attribute__((used)) static void rts7751r2d_power_off(void)
{
 ctrl_outw(0x0001, PA_POWOFF);
}
