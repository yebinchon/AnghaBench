
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct md5_ctx {int block; int hash; } ;


 int le32_to_cpu_array (int ,int) ;
 int md5_transform (int ,int ) ;

__attribute__((used)) static inline void md5_transform_helper(struct md5_ctx *ctx)
{
 le32_to_cpu_array(ctx->block, sizeof(ctx->block) / sizeof(u32));
 md5_transform(ctx->hash, ctx->block);
}
