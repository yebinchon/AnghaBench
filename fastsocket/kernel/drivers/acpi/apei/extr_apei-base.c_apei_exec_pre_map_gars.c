
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apei_exec_context {int entries; } ;


 int apei_exec_for_each_entry (struct apei_exec_context*,int ,int *,int*) ;
 int apei_exec_post_unmap_gars (struct apei_exec_context*) ;
 int memcpy (struct apei_exec_context*,struct apei_exec_context*,int) ;
 int pre_map_gar_callback ;

int apei_exec_pre_map_gars(struct apei_exec_context *ctx)
{
 int rc, end;

 rc = apei_exec_for_each_entry(ctx, pre_map_gar_callback,
          ((void*)0), &end);
 if (rc) {
  struct apei_exec_context ctx_unmap;
  memcpy(&ctx_unmap, ctx, sizeof(*ctx));
  ctx_unmap.entries = end;
  apei_exec_post_unmap_gars(&ctx_unmap);
 }

 return rc;
}
