
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ds_context {TYPE_1__* pebs_master; TYPE_2__* bts_master; } ;
typedef enum ds_qualifier { ____Placeholder_ds_qualifier } ds_qualifier ;
struct TYPE_4__ {int (* ovfl ) (TYPE_2__*) ;} ;
struct TYPE_3__ {int (* ovfl ) (TYPE_1__*) ;} ;




 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static void ds_overflow(struct ds_context *context, enum ds_qualifier qual)
{
 switch (qual) {
 case 129:
  if (context->bts_master &&
      context->bts_master->ovfl)
   context->bts_master->ovfl(context->bts_master);
  break;
 case 128:
  if (context->pebs_master &&
      context->pebs_master->ovfl)
   context->pebs_master->ovfl(context->pebs_master);
  break;
 }
}
