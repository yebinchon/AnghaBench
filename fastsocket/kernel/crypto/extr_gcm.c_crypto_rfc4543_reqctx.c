
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void crypto_rfc4543_req_ctx ;
struct aead_request {int dummy; } ;


 scalar_t__ PTR_ALIGN (int *,unsigned long) ;
 scalar_t__ aead_request_ctx (struct aead_request*) ;
 unsigned long crypto_aead_alignmask (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;

__attribute__((used)) static inline struct crypto_rfc4543_req_ctx *crypto_rfc4543_reqctx(
 struct aead_request *req)
{
 unsigned long align = crypto_aead_alignmask(crypto_aead_reqtfm(req));

 return (void *)PTR_ALIGN((u8 *)aead_request_ctx(req), align + 1);
}
