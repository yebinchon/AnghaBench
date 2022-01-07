
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer (int *) ;
 int enable_irq (unsigned long) ;
 int perr_timer ;
 int serr_timer ;

__attribute__((used)) static void dc21285_enable_error(unsigned long __data)
{
 switch (__data) {
 case 128:
  del_timer(&serr_timer);
  break;

 case 129:
  del_timer(&perr_timer);
  break;
 }

 enable_irq(__data);
}
