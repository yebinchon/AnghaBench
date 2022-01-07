
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int EnTimerInt (int ,int ) ;
 int OFF ;
 int ON ;
 int TIMER ;
 int WriteReg (int ,int ,int ) ;

__attribute__((used)) static void SetTimer(__u16 iobase, __u8 count)
{
 EnTimerInt(iobase, OFF);
 WriteReg(iobase, TIMER, count);
 EnTimerInt(iobase, ON);
}
