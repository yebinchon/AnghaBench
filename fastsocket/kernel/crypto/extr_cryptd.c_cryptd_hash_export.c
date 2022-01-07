
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptd_hash_request_ctx {int desc; } ;
struct ahash_request {int dummy; } ;


 struct cryptd_hash_request_ctx* ahash_request_ctx (struct ahash_request*) ;
 int crypto_shash_export (int *,void*) ;

__attribute__((used)) static int cryptd_hash_export(struct ahash_request *req, void *out)
{
 struct cryptd_hash_request_ctx *rctx = ahash_request_ctx(req);

 return crypto_shash_export(&rctx->desc, out);
}
