
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int battery_timer ;
 int del_timer (int *) ;

__attribute__((used)) static void del_battery_timer(void)
{
 del_timer(&battery_timer);
}
