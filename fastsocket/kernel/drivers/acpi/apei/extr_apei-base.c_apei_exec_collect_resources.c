
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_resources {int dummy; } ;
struct apei_exec_context {int dummy; } ;


 int apei_exec_for_each_entry (struct apei_exec_context*,int ,struct apei_resources*,int *) ;
 int collect_res_callback ;

int apei_exec_collect_resources(struct apei_exec_context *ctx,
    struct apei_resources *resources)
{
 return apei_exec_for_each_entry(ctx, collect_res_callback,
     resources, ((void*)0));
}
