
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int bat_ps ;
 int wm97xx_bat_update (int *) ;

__attribute__((used)) static void wm97xx_bat_work(struct work_struct *work)
{
 wm97xx_bat_update(&bat_ps);
}
