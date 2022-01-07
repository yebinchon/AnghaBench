
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PA_SHUTDOWN ;
 int ctrl_outb (int,int ) ;

__attribute__((used)) static void landisk_power_off(void)
{
        ctrl_outb(0x01, PA_SHUTDOWN);
}
