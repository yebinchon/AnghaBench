
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FDC (unsigned long) ;
 int UNIT (unsigned long) ;
 int set_dor (int ,unsigned char,int ) ;

__attribute__((used)) static void motor_off_callback(unsigned long nr)
{
 unsigned char mask = ~(0x10 << UNIT(nr));

 set_dor(FDC(nr), mask, 0);
}
