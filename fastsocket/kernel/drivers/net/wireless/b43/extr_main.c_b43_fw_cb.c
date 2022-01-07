
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;
struct b43_request_fw_context {int fw_load_complete; struct firmware const* blob; } ;


 int complete (int *) ;

__attribute__((used)) static void b43_fw_cb(const struct firmware *firmware, void *context)
{
 struct b43_request_fw_context *ctx = context;

 ctx->blob = firmware;
 complete(&ctx->fw_load_complete);
}
