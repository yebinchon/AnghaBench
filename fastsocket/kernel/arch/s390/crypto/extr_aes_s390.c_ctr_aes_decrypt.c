
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct s390_aes_ctx {int dec; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int tfm; } ;


 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 struct s390_aes_ctx* crypto_blkcipher_ctx (int ) ;
 int ctr_aes_crypt (struct blkcipher_desc*,int ,struct s390_aes_ctx*,struct blkcipher_walk*) ;

__attribute__((used)) static int ctr_aes_decrypt(struct blkcipher_desc *desc,
      struct scatterlist *dst, struct scatterlist *src,
      unsigned int nbytes)
{
 struct s390_aes_ctx *sctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk walk;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 return ctr_aes_crypt(desc, sctx->dec, sctx, &walk);
}
