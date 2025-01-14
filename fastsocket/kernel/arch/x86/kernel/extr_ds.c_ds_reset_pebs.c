
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ top; scalar_t__ begin; } ;
struct TYPE_8__ {TYPE_3__ ds; } ;
struct TYPE_6__ {TYPE_1__* context; } ;
struct pebs_tracer {TYPE_4__ trace; TYPE_2__ ds; } ;
struct TYPE_5__ {int ds; } ;


 int EINVAL ;
 int ds_index ;
 int ds_pebs ;
 int ds_set (int ,int ,int ,unsigned long) ;

int ds_reset_pebs(struct pebs_tracer *tracer)
{
 if (!tracer)
  return -EINVAL;

 tracer->trace.ds.top = tracer->trace.ds.begin;

 ds_set(tracer->ds.context->ds, ds_pebs, ds_index,
        (unsigned long)tracer->trace.ds.top);

 return 0;
}
