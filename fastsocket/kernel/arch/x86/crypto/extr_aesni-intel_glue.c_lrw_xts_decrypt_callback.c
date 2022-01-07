
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int aesni_ecb_dec (void*,int *,int *,unsigned int) ;

__attribute__((used)) static void lrw_xts_decrypt_callback(void *ctx, u8 *blks, unsigned int nbytes)
{
 aesni_ecb_dec(ctx, blks, blks, nbytes);
}
