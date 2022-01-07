
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct sinfo {void (* fn ) (struct crypto_tfm*,u8*,u8 const*) ;int t; int tfm; } ;
struct TYPE_6__ {int * mulinc; int table; } ;
struct priv {TYPE_1__ table; int child; } ;
struct TYPE_9__ {int * addr; } ;
struct TYPE_10__ {TYPE_4__ virt; } ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_2__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_5__ dst; TYPE_3__ src; scalar_t__ iv; } ;
struct blkcipher_desc {int dummy; } ;
typedef int be128 ;


 int LRW_BLOCK_SIZE ;
 int be128_xor (int *,int *,int *) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypto_cipher_tfm (int ) ;
 size_t get_index128 (int *) ;
 int gf128mul_64k_bbe (int *,int ) ;
 int inc (int *) ;
 int lrw_round (struct sinfo*,int *,int *) ;

__attribute__((used)) static int crypt(struct blkcipher_desc *d,
   struct blkcipher_walk *w, struct priv *ctx,
   void (*fn)(struct crypto_tfm *, u8 *, const u8 *))
{
 int err;
 unsigned int avail;
 const int bs = LRW_BLOCK_SIZE;
 struct sinfo s = {
  .tfm = crypto_cipher_tfm(ctx->child),
  .fn = fn
 };
 be128 *iv;
 u8 *wsrc;
 u8 *wdst;

 err = blkcipher_walk_virt(d, w);
 if (!(avail = w->nbytes))
  return err;

 wsrc = w->src.virt.addr;
 wdst = w->dst.virt.addr;


 iv = (be128 *)w->iv;
 s.t = *iv;


 gf128mul_64k_bbe(&s.t, ctx->table.table);

 goto first;

 for (;;) {
  do {


   be128_xor(&s.t, &s.t,
      &ctx->table.mulinc[get_index128(iv)]);
   inc(iv);

first:
   lrw_round(&s, wdst, wsrc);

   wsrc += bs;
   wdst += bs;
  } while ((avail -= bs) >= bs);

  err = blkcipher_walk_done(d, w, avail);
  if (!(avail = w->nbytes))
   break;

  wsrc = w->src.virt.addr;
  wdst = w->dst.virt.addr;
 }

 return err;
}
