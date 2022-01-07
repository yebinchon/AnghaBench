
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {scalar_t__ req; int tfm; int req_pool; } ;
struct convert_context {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int GFP_NOIO ;
 int ablkcipher_request_set_callback (scalar_t__,int,int ,int ) ;
 int ablkcipher_request_set_tfm (scalar_t__,int ) ;
 int dmreq_of_req (struct crypt_config*,scalar_t__) ;
 int kcryptd_async_done ;
 scalar_t__ mempool_alloc (int ,int ) ;

__attribute__((used)) static void crypt_alloc_req(struct crypt_config *cc,
       struct convert_context *ctx)
{
 if (!cc->req)
  cc->req = mempool_alloc(cc->req_pool, GFP_NOIO);
 ablkcipher_request_set_tfm(cc->req, cc->tfm);
 ablkcipher_request_set_callback(cc->req, CRYPTO_TFM_REQ_MAY_BACKLOG |
     CRYPTO_TFM_REQ_MAY_SLEEP,
     kcryptd_async_done,
     dmreq_of_req(cc, cc->req));
}
