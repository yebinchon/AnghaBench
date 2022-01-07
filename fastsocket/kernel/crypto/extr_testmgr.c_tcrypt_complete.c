
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcrypt_result {int err; int completion; } ;
struct crypto_async_request {struct tcrypt_result* data; } ;


 int EINPROGRESS ;
 int complete (int *) ;

__attribute__((used)) static void tcrypt_complete(struct crypto_async_request *req, int err)
{
 struct tcrypt_result *res = req->data;

 if (err == -EINPROGRESS)
  return;

 res->err = err;
 complete(&res->completion);
}
