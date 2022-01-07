
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hdr; } ;
struct talitos_edesc {TYPE_1__ desc; } ;
struct talitos_ctx {int desc_hdr_template; int iv; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int dummy; } ;
struct aead_givcrypt_request {int seq; scalar_t__ giv; struct aead_request areq; } ;
typedef int __be64 ;


 int DESC_HDR_MODE0_ENCRYPT ;
 scalar_t__ IS_ERR (struct talitos_edesc*) ;
 int PTR_ERR (struct talitos_edesc*) ;
 struct talitos_edesc* aead_edesc_alloc (struct aead_request*,int ) ;
 int cpu_to_be64 (int ) ;
 struct talitos_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_ivsize (struct crypto_aead*) ;
 struct crypto_aead* crypto_aead_reqtfm (struct aead_request*) ;
 int ipsec_esp (struct talitos_edesc*,struct aead_request*,scalar_t__,int ,int ) ;
 int ipsec_esp_encrypt_done ;
 int memcpy (scalar_t__,int ,int ) ;

__attribute__((used)) static int aead_givencrypt(struct aead_givcrypt_request *req)
{
 struct aead_request *areq = &req->areq;
 struct crypto_aead *authenc = crypto_aead_reqtfm(areq);
 struct talitos_ctx *ctx = crypto_aead_ctx(authenc);
 struct talitos_edesc *edesc;


 edesc = aead_edesc_alloc(areq, 0);
 if (IS_ERR(edesc))
  return PTR_ERR(edesc);


 edesc->desc.hdr = ctx->desc_hdr_template | DESC_HDR_MODE0_ENCRYPT;

 memcpy(req->giv, ctx->iv, crypto_aead_ivsize(authenc));

 *(__be64 *)req->giv ^= cpu_to_be64(req->seq);

 return ipsec_esp(edesc, areq, req->giv, req->seq,
    ipsec_esp_encrypt_done);
}
