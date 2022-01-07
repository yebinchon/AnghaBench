
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_gov_info_struct {int work; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void spu_gov_cancel_work(struct spu_gov_info_struct *info)
{
 cancel_delayed_work_sync(&info->work);
}
