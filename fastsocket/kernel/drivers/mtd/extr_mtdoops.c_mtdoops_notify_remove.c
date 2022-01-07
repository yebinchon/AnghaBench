
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdoops_context {scalar_t__ mtd_index; int * mtd; } ;
struct mtd_info {scalar_t__ index; } ;


 int flush_scheduled_work () ;
 struct mtdoops_context oops_cxt ;

__attribute__((used)) static void mtdoops_notify_remove(struct mtd_info *mtd)
{
 struct mtdoops_context *cxt = &oops_cxt;

 if ((mtd->index != cxt->mtd_index) || cxt->mtd_index < 0)
  return;

 cxt->mtd = ((void*)0);
 flush_scheduled_work();
}
