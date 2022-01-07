
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct padlock_sha_desc {int fallback; } ;


 int crypto_shash_export (int *,void*) ;
 struct padlock_sha_desc* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int padlock_sha_export(struct shash_desc *desc, void *out)
{
 struct padlock_sha_desc *dctx = shash_desc_ctx(desc);

 return crypto_shash_export(&dctx->fallback, out);
}
