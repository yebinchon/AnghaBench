
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bts_trace {int ds; } ;
struct TYPE_2__ {int context; } ;
struct bts_tracer {struct bts_trace const trace; TYPE_1__ ds; } ;


 int ds_bts ;
 int ds_read_config (int ,int *,int ) ;

const struct bts_trace *ds_read_bts(struct bts_tracer *tracer)
{
 if (!tracer)
  return ((void*)0);

 ds_read_config(tracer->ds.context, &tracer->trace.ds, ds_bts);
 return &tracer->trace;
}
