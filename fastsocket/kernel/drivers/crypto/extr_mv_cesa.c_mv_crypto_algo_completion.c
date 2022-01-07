
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv_req_ctx {scalar_t__ op; } ;
struct ablkcipher_request {int info; } ;
struct TYPE_2__ {scalar_t__ sram; struct ablkcipher_request* cur_req; } ;


 scalar_t__ COP_AES_CBC ;
 scalar_t__ SRAM_DATA_IV_BUF ;
 struct mv_req_ctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 TYPE_1__* cpg ;
 int memcpy (int ,scalar_t__,int) ;

__attribute__((used)) static void mv_crypto_algo_completion(void)
{
 struct ablkcipher_request *req = cpg->cur_req;
 struct mv_req_ctx *req_ctx = ablkcipher_request_ctx(req);

 if (req_ctx->op != COP_AES_CBC)
  return ;

 memcpy(req->info, cpg->sram + SRAM_DATA_IV_BUF, 16);
}
