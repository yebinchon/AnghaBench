
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int HZ ;
 int bios_check_work ;
 int check_for_bios_corruption () ;
 int corruption_check_period ;
 int round_jiffies_relative (int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void check_corruption(struct work_struct *dummy)
{
 check_for_bios_corruption();
 schedule_delayed_work(&bios_check_work,
  round_jiffies_relative(corruption_check_period*HZ));
}
