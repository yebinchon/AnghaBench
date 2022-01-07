
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int ahash_request_ctx (struct ahash_request*) ;
 int crypto_shash_import (int ,void const*) ;

__attribute__((used)) static int shash_async_import(struct ahash_request *req, const void *in)
{
 return crypto_shash_import(ahash_request_ctx(req), in);
}
