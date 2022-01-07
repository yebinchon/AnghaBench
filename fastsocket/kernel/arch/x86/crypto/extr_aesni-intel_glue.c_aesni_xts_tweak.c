
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int aesni_enc (void*,int *,int const*) ;

__attribute__((used)) static void aesni_xts_tweak(void *ctx, u8 *out, const u8 *in)
{
 aesni_enc(ctx, out, in);
}
