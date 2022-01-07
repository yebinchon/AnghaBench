
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct xts_crypt_req {unsigned int const tbuflen; int crypt_ctx; int (* crypt_fn ) (int ,int *,unsigned int) ;int tweak_ctx; int (* tweak_fn ) (int ,int *,scalar_t__) ;int * tbuf; } ;
struct scatterlist {int dummy; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ dst; TYPE_2__ src; scalar_t__ iv; } ;
struct blkcipher_desc {int dummy; } ;
typedef int be128 ;


 int BUG_ON (int) ;
 unsigned int XTS_BLOCK_SIZE ;
 int be128_xor (int *,int *,int *) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int gf128mul_x_ble (int *,int *) ;
 unsigned int min (unsigned int,unsigned int const) ;
 int stub1 (int ,int *,scalar_t__) ;
 int stub2 (int ,int *,unsigned int) ;

int xts_crypt(struct blkcipher_desc *desc, struct scatterlist *sdst,
       struct scatterlist *ssrc, unsigned int nbytes,
       struct xts_crypt_req *req)
{
 const unsigned int bsize = XTS_BLOCK_SIZE;
 const unsigned int max_blks = req->tbuflen / bsize;
 struct blkcipher_walk walk;
 unsigned int nblocks;
 be128 *src, *dst, *t;
 be128 *t_buf = req->tbuf;
 int err, i;

 BUG_ON(max_blks < 1);

 blkcipher_walk_init(&walk, sdst, ssrc, nbytes);

 err = blkcipher_walk_virt(desc, &walk);
 nbytes = walk.nbytes;
 if (!nbytes)
  return err;

 nblocks = min(nbytes / bsize, max_blks);
 src = (be128 *)walk.src.virt.addr;
 dst = (be128 *)walk.dst.virt.addr;


 req->tweak_fn(req->tweak_ctx, (u8 *)&t_buf[0], walk.iv);

 i = 0;
 goto first;

 for (;;) {
  do {
   for (i = 0; i < nblocks; i++) {
    gf128mul_x_ble(&t_buf[i], t);
first:
    t = &t_buf[i];


    be128_xor(dst + i, t, src + i);
   }


   req->crypt_fn(req->crypt_ctx, (u8 *)dst,
          nblocks * bsize);


   for (i = 0; i < nblocks; i++)
    be128_xor(dst + i, dst + i, &t_buf[i]);

   src += nblocks;
   dst += nblocks;
   nbytes -= nblocks * bsize;
   nblocks = min(nbytes / bsize, max_blks);
  } while (nblocks > 0);

  *(be128 *)walk.iv = *t;

  err = blkcipher_walk_done(desc, &walk, nbytes);
  nbytes = walk.nbytes;
  if (!nbytes)
   break;

  nblocks = min(nbytes / bsize, max_blks);
  src = (be128 *)walk.src.virt.addr;
  dst = (be128 *)walk.dst.virt.addr;
 }

 return err;
}
