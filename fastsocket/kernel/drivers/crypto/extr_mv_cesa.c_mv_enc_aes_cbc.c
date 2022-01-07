
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_req_ctx {scalar_t__ decrypt; int op; } ;
struct ablkcipher_request {int dummy; } ;


 int COP_AES_CBC ;
 struct mv_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 int mv_handle_req (struct ablkcipher_request*) ;

__attribute__((used)) static int mv_enc_aes_cbc(struct ablkcipher_request *req)
{
 struct mv_req_ctx *req_ctx = ablkcipher_request_ctx(req);

 req_ctx->op = COP_AES_CBC;
 req_ctx->decrypt = 0;

 return mv_handle_req(req);
}
