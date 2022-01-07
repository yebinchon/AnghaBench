
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct hifn_request_context {unsigned int ivsize; scalar_t__ iv; scalar_t__ type; scalar_t__ mode; scalar_t__ op; } ;
struct hifn_context {int keysize; } ;
struct TYPE_2__ {int tfm; } ;
struct ablkcipher_request {scalar_t__ info; TYPE_1__ base; } ;


 scalar_t__ ACRYPTO_MODE_ECB ;
 scalar_t__ ACRYPTO_TYPE_3DES ;
 scalar_t__ ACRYPTO_TYPE_AES_128 ;
 scalar_t__ ACRYPTO_TYPE_AES_192 ;
 scalar_t__ ACRYPTO_TYPE_AES_256 ;
 scalar_t__ ACRYPTO_TYPE_DES ;
 unsigned int HIFN_3DES_KEY_LENGTH ;
 unsigned int HIFN_AES_IV_LENGTH ;
 unsigned int HIFN_DES_KEY_LENGTH ;
 struct hifn_request_context* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 unsigned int crypto_ablkcipher_ivsize (int ) ;
 int crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 struct hifn_context* crypto_tfm_ctx (int ) ;
 int hifn_handle_req (struct ablkcipher_request*) ;

__attribute__((used)) static int hifn_setup_crypto_req(struct ablkcipher_request *req, u8 op,
  u8 type, u8 mode)
{
 struct hifn_context *ctx = crypto_tfm_ctx(req->base.tfm);
 struct hifn_request_context *rctx = ablkcipher_request_ctx(req);
 unsigned ivsize;

 ivsize = crypto_ablkcipher_ivsize(crypto_ablkcipher_reqtfm(req));

 if (req->info && mode != ACRYPTO_MODE_ECB) {
  if (type == ACRYPTO_TYPE_AES_128)
   ivsize = HIFN_AES_IV_LENGTH;
  else if (type == ACRYPTO_TYPE_DES)
   ivsize = HIFN_DES_KEY_LENGTH;
  else if (type == ACRYPTO_TYPE_3DES)
   ivsize = HIFN_3DES_KEY_LENGTH;
 }

 if (ctx->keysize != 16 && type == ACRYPTO_TYPE_AES_128) {
  if (ctx->keysize == 24)
   type = ACRYPTO_TYPE_AES_192;
  else if (ctx->keysize == 32)
   type = ACRYPTO_TYPE_AES_256;
 }

 rctx->op = op;
 rctx->mode = mode;
 rctx->type = type;
 rctx->iv = req->info;
 rctx->ivsize = ivsize;







 return hifn_handle_req(req);
}
