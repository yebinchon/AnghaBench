
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;
struct salsa20_ctx {void** input; } ;


 void* U8TO32_LITTLE (char const*) ;
 char* sigma ;
 char* tau ;

__attribute__((used)) static void salsa20_keysetup(struct salsa20_ctx *ctx, const u8 *k, u32 kbytes)
{
 const char *constants;

 ctx->input[1] = U8TO32_LITTLE(k + 0);
 ctx->input[2] = U8TO32_LITTLE(k + 4);
 ctx->input[3] = U8TO32_LITTLE(k + 8);
 ctx->input[4] = U8TO32_LITTLE(k + 12);
 if (kbytes == 32) {
  k += 16;
  constants = sigma;
 } else {
  constants = tau;
 }
 ctx->input[11] = U8TO32_LITTLE(k + 0);
 ctx->input[12] = U8TO32_LITTLE(k + 4);
 ctx->input[13] = U8TO32_LITTLE(k + 8);
 ctx->input[14] = U8TO32_LITTLE(k + 12);
 ctx->input[0] = U8TO32_LITTLE(constants + 0);
 ctx->input[5] = U8TO32_LITTLE(constants + 4);
 ctx->input[10] = U8TO32_LITTLE(constants + 8);
 ctx->input[15] = U8TO32_LITTLE(constants + 12);
}
