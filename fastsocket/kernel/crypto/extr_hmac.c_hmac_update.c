
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int flags; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int crypto_shash_update (struct shash_desc*,int const*,unsigned int) ;
 struct shash_desc* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int hmac_update(struct shash_desc *pdesc,
         const u8 *data, unsigned int nbytes)
{
 struct shash_desc *desc = shash_desc_ctx(pdesc);

 desc->flags = pdesc->flags & CRYPTO_TFM_REQ_MAY_SLEEP;

 return crypto_shash_update(desc, data, nbytes);
}
