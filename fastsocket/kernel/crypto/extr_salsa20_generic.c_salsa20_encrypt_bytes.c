
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct salsa20_ctx {int * input; } ;


 int crypto_xor (int const*,int const*,int) ;
 int memcpy (int const*,int const*,unsigned int) ;
 int salsa20_wordtobyte (int const*,int *) ;

__attribute__((used)) static void salsa20_encrypt_bytes(struct salsa20_ctx *ctx, u8 *dst,
      const u8 *src, unsigned int bytes)
{
 u8 buf[64];

 if (dst != src)
  memcpy(dst, src, bytes);

 while (bytes) {
  salsa20_wordtobyte(buf, ctx->input);

  ctx->input[8]++;
  if (!ctx->input[8])
   ctx->input[9]++;

  if (bytes <= 64) {
   crypto_xor(dst, buf, bytes);
   return;
  }

  crypto_xor(dst, buf, 64);
  bytes -= 64;
  dst += 64;
 }
}
