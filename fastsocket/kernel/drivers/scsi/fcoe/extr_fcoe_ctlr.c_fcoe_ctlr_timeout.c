
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr {int timer_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void fcoe_ctlr_timeout(unsigned long arg)
{
 struct fcoe_ctlr *fip = (struct fcoe_ctlr *)arg;

 schedule_work(&fip->timer_work);
}
