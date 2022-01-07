
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct priv {int child; int tweak; } ;
struct blkcipher_walk {int dummy; } ;
struct blkcipher_desc {int tfm; } ;
struct TYPE_2__ {int cia_decrypt; int cia_encrypt; } ;


 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int crypt (struct blkcipher_desc*,struct blkcipher_walk*,struct priv*,int ,int ) ;
 struct priv* crypto_blkcipher_ctx (int ) ;
 TYPE_1__* crypto_cipher_alg (int ) ;

__attribute__((used)) static int decrypt(struct blkcipher_desc *desc, struct scatterlist *dst,
     struct scatterlist *src, unsigned int nbytes)
{
 struct priv *ctx = crypto_blkcipher_ctx(desc->tfm);
 struct blkcipher_walk w;

 blkcipher_walk_init(&w, dst, src, nbytes);
 return crypt(desc, &w, ctx, crypto_cipher_alg(ctx->tweak)->cia_encrypt,
       crypto_cipher_alg(ctx->child)->cia_decrypt);
}
