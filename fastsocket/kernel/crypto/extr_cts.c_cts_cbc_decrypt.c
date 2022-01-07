
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scatterlist {int dummy; } ;
struct crypto_cts_ctx {int child; } ;
struct blkcipher_desc {int * info; int flags; int tfm; } ;
typedef int iv ;


 int EINVAL ;
 int crypto_blkcipher_blocksize (int ) ;
 int crypto_blkcipher_decrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int crypto_xor (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int scatterwalk_map_and_copy (int *,struct scatterlist*,unsigned int,unsigned int,int) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,int *,int) ;

__attribute__((used)) static int cts_cbc_decrypt(struct crypto_cts_ctx *ctx,
      struct blkcipher_desc *desc,
      struct scatterlist *dst,
      struct scatterlist *src,
      unsigned int offset,
      unsigned int nbytes)
{
 int bsize = crypto_blkcipher_blocksize(desc->tfm);
 u8 tmp[bsize];
 struct blkcipher_desc lcldesc;
 struct scatterlist sgsrc[1], sgdst[1];
 int lastn = nbytes - bsize;
 u8 iv[bsize];
 u8 s[bsize * 2], d[bsize * 2];
 int err;

 if (lastn < 0)
  return -EINVAL;

 sg_init_table(sgsrc, 1);
 sg_init_table(sgdst, 1);

 scatterwalk_map_and_copy(s, src, offset, nbytes, 0);

 lcldesc.tfm = ctx->child;
 lcldesc.info = iv;
 lcldesc.flags = desc->flags;


 memset(iv, 0, sizeof(iv));
 sg_set_buf(&sgsrc[0], s, bsize);
 sg_set_buf(&sgdst[0], tmp, bsize);
 err = crypto_blkcipher_decrypt_iv(&lcldesc, sgdst, sgsrc, bsize);
 if (err)
  return err;

 memset(iv, 0, sizeof(iv));
 memcpy(iv, s + bsize, lastn);

 crypto_xor(tmp, iv, bsize);

 memcpy(d + bsize, tmp, lastn);


 memcpy(s + bsize + lastn, tmp + lastn, bsize - lastn);

 memset(iv, 0, sizeof(iv));
 sg_set_buf(&sgsrc[0], s + bsize, bsize);
 sg_set_buf(&sgdst[0], d, bsize);
 err = crypto_blkcipher_decrypt_iv(&lcldesc, sgdst, sgsrc, bsize);


 crypto_xor(d, desc->info, bsize);

 scatterwalk_map_and_copy(d, dst, offset, nbytes, 1);

 memcpy(desc->info, s, bsize);
 return err;
}
