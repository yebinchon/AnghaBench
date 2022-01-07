
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypt_s390_des_ctx {int dummy; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int tfm; } ;


 int KMCTR_TDEA_192_ENCRYPT ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 struct crypt_s390_des_ctx* crypto_blkcipher_ctx (int ) ;
 int ctr_desall_crypt (struct blkcipher_desc*,int ,struct crypt_s390_des_ctx*,struct blkcipher_walk*) ;

__attribute__((used)) static int ctr_des3_encrypt(struct blkcipher_desc *desc,
       struct scatterlist *dst, struct scatterlist *src,
       unsigned int nbytes)
{
 struct crypt_s390_des_ctx *ctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk walk;

 blkcipher_walk_init(&walk, dst, src, nbytes);
 return ctr_desall_crypt(desc, KMCTR_TDEA_192_ENCRYPT, ctx, &walk);
}
