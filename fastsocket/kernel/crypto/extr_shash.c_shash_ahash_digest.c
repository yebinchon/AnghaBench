
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int flags; } ;
struct scatterlist {unsigned int offset; int length; } ;
struct ahash_request {unsigned int nbytes; int result; struct scatterlist* src; } ;


 scalar_t__ PAGE_SIZE ;
 void* crypto_kmap (int ,int ) ;
 int crypto_kunmap (void*,int ) ;
 int crypto_shash_digest (struct shash_desc*,void*,unsigned int,int ) ;
 scalar_t__ crypto_shash_init (struct shash_desc*) ;
 int crypto_yield (int ) ;
 unsigned int min (int ,unsigned int) ;
 int sg_page (struct scatterlist*) ;
 int shash_ahash_finup (struct ahash_request*,struct shash_desc*) ;

int shash_ahash_digest(struct ahash_request *req, struct shash_desc *desc)
{
 struct scatterlist *sg = req->src;
 unsigned int offset = sg->offset;
 unsigned int nbytes = req->nbytes;
 int err;

 if (nbytes < min(sg->length, ((unsigned int)(PAGE_SIZE)) - offset)) {
  void *data;

  data = crypto_kmap(sg_page(sg), 0);
  err = crypto_shash_digest(desc, data + offset, nbytes,
       req->result);
  crypto_kunmap(data, 0);
  crypto_yield(desc->flags);
 } else
  err = crypto_shash_init(desc) ?:
        shash_ahash_finup(req, desc);

 return err;
}
