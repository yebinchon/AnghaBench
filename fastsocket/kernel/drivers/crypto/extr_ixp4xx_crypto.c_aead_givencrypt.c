
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ixp_ctx {int salted; int * salt; } ;
struct crypto_aead {int dummy; } ;
struct TYPE_2__ {scalar_t__ cryptlen; int assoclen; scalar_t__ iv; } ;
struct aead_givcrypt_request {int giv; TYPE_1__ areq; int seq; } ;
typedef int __be64 ;


 struct crypto_aead* aead_givcrypt_reqtfm (struct aead_givcrypt_request*) ;
 int aead_perform (TYPE_1__*,int,int ,scalar_t__,int ) ;
 int cpu_to_be64 (int ) ;
 struct ixp_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 unsigned int crypto_aead_ivsize (struct crypto_aead*) ;
 int get_random_bytes (int *,unsigned int) ;
 int memcpy (scalar_t__,int *,unsigned int) ;
 int memset (int ,int ,unsigned int) ;

__attribute__((used)) static int aead_givencrypt(struct aead_givcrypt_request *req)
{
 struct crypto_aead *tfm = aead_givcrypt_reqtfm(req);
 struct ixp_ctx *ctx = crypto_aead_ctx(tfm);
 unsigned len, ivsize = crypto_aead_ivsize(tfm);
 __be64 seq;


 if (!ctx->salted) {
  get_random_bytes(ctx->salt, ivsize);
  ctx->salted = 1;
 }
 memcpy(req->areq.iv, ctx->salt, ivsize);
 len = ivsize;
 if (ivsize > sizeof(u64)) {
  memset(req->giv, 0, ivsize - sizeof(u64));
  len = sizeof(u64);
 }
 seq = cpu_to_be64(req->seq);
 memcpy(req->giv + ivsize - len, &seq, len);
 return aead_perform(&req->areq, 1, req->areq.assoclen,
   req->areq.cryptlen +ivsize, req->giv);
}
