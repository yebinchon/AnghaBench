
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlib_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 struct zlib_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int zlib_comp_exit (struct zlib_ctx*) ;
 int zlib_decomp_exit (struct zlib_ctx*) ;

__attribute__((used)) static void zlib_exit(struct crypto_tfm *tfm)
{
 struct zlib_ctx *ctx = crypto_tfm_ctx(tfm);

 zlib_comp_exit(ctx);
 zlib_decomp_exit(ctx);
}
