
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct salsa20_ctx {void** input; } ;


 void* U8TO32_LITTLE (int const*) ;

__attribute__((used)) static void salsa20_ivsetup(struct salsa20_ctx *ctx, const u8 *iv)
{
 ctx->input[6] = U8TO32_LITTLE(iv + 0);
 ctx->input[7] = U8TO32_LITTLE(iv + 4);
 ctx->input[8] = 0;
 ctx->input[9] = 0;
}
