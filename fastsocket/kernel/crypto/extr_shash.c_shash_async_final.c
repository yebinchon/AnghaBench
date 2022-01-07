
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int result; } ;


 int ahash_request_ctx (struct ahash_request*) ;
 int crypto_shash_final (int ,int ) ;

__attribute__((used)) static int shash_async_final(struct ahash_request *req)
{
 return crypto_shash_final(ahash_request_ctx(req), req->result);
}
