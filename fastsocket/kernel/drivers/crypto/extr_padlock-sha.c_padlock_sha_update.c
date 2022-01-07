
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct shash_desc {int flags; } ;
struct TYPE_2__ {int flags; } ;
struct padlock_sha_desc {TYPE_1__ fallback; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int crypto_shash_update (TYPE_1__*,int const*,unsigned int) ;
 struct padlock_sha_desc* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int padlock_sha_update(struct shash_desc *desc,
         const u8 *data, unsigned int length)
{
 struct padlock_sha_desc *dctx = shash_desc_ctx(desc);

 dctx->fallback.flags = desc->flags & CRYPTO_TFM_REQ_MAY_SLEEP;
 return crypto_shash_update(&dctx->fallback, data, length);
}
