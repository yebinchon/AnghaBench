
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u128 ;
typedef int le128 ;
typedef int (* common_glue_func_t ) (void*,int *,int *) ;


 int le128_gf128mul_x_ble (int *,int *) ;
 int u128_xor (int const*,int const*,int const*) ;

void glue_xts_crypt_128bit_one(void *ctx, u128 *dst, const u128 *src, le128 *iv,
          common_glue_func_t fn)
{
 le128 ivblk = *iv;


 le128_gf128mul_x_ble(iv, &ivblk);


 u128_xor(dst, src, (u128 *)&ivblk);


 fn(ctx, (u8 *)dst, (u8 *)dst);


 u128_xor(dst, dst, (u128 *)&ivblk);
}
