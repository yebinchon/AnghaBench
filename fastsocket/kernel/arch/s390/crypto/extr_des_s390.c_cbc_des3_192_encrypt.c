
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypt_s390_des3_192_ctx {int iv; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int tfm; } ;


 int KMC_TDEA_192_ENCRYPT ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int cbc_desall_crypt (struct blkcipher_desc*,int ,int ,struct blkcipher_walk*) ;
 struct crypt_s390_des3_192_ctx* crypto_blkcipher_ctx (int ) ;

__attribute__((used)) static int cbc_des3_192_encrypt(struct blkcipher_desc *desc,
    struct scatterlist *dst,
    struct scatterlist *src, unsigned int nbytes)
{
 struct crypt_s390_des3_192_ctx *sctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk walk;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 return cbc_desall_crypt(desc, KMC_TDEA_192_ENCRYPT, sctx->iv, &walk);
}
