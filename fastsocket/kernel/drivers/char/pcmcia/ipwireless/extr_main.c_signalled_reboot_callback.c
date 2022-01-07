
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_dev {int work_reboot; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void signalled_reboot_callback(void *callback_data)
{
 struct ipw_dev *ipw = (struct ipw_dev *) callback_data;


 schedule_work(&ipw->work_reboot);
}
