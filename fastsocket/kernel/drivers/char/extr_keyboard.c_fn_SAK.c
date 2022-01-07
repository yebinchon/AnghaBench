
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct vc_data {int dummy; } ;
struct TYPE_2__ {struct work_struct SAK_work; } ;


 size_t fg_console ;
 int schedule_work (struct work_struct*) ;
 TYPE_1__* vc_cons ;

__attribute__((used)) static void fn_SAK(struct vc_data *vc)
{
 struct work_struct *SAK_work = &vc_cons[fg_console].SAK_work;
 schedule_work(SAK_work);
}
