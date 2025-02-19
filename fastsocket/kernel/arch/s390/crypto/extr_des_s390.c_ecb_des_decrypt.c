
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypt_s390_des_ctx {int key; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int tfm; } ;


 int KM_DEA_DECRYPT ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 struct crypt_s390_des_ctx* crypto_blkcipher_ctx (int ) ;
 int ecb_desall_crypt (struct blkcipher_desc*,int ,int ,struct blkcipher_walk*) ;

__attribute__((used)) static int ecb_des_decrypt(struct blkcipher_desc *desc,
      struct scatterlist *dst, struct scatterlist *src,
      unsigned int nbytes)
{
 struct crypt_s390_des_ctx *sctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk walk;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 return ecb_desall_crypt(desc, KM_DEA_DECRYPT, sctx->key, &walk);
}
