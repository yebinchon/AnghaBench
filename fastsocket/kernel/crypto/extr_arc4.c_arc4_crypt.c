
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct crypto_tfm {int dummy; } ;
struct arc4_ctx {size_t* S; size_t x; size_t y; } ;


 struct arc4_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void arc4_crypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
 struct arc4_ctx *ctx = crypto_tfm_ctx(tfm);

 u8 *const S = ctx->S;
 u8 x = ctx->x;
 u8 y = ctx->y;
 u8 a, b;

 a = S[x];
 y = (y + a) & 0xff;
 b = S[y];
 S[x] = b;
 S[y] = a;
 x = (x + 1) & 0xff;
 *out++ = *in ^ S[(a + b) & 0xff];

 ctx->x = x;
 ctx->y = y;
}
