
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct push_switch {int work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void switch_timer(unsigned long data)
{
 struct push_switch *psw = (struct push_switch *)data;

 schedule_work(&psw->work);
}
