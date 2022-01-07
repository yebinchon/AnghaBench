
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rst_bus_status; int rst_dev_status; int eh_wait; int eh_timer; } ;
typedef TYPE_1__ FAS216_Info ;


 int LOG_ERROR ;
 int del_timer (int *) ;
 int fas216_log (TYPE_1__*,int ,char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void fas216_eh_timer(unsigned long data)
{
 FAS216_Info *info = (FAS216_Info *)data;

 fas216_log(info, LOG_ERROR, "error handling timed out\n");

 del_timer(&info->eh_timer);

 if (info->rst_bus_status == 0)
  info->rst_bus_status = -1;
 if (info->rst_dev_status == 0)
  info->rst_dev_status = -1;

 wake_up(&info->eh_wait);
}
