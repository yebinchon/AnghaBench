
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int EINPROGRESS ;
 int aead_request_complete (struct aead_request*,int) ;

__attribute__((used)) static void authenc_request_complete(struct aead_request *req, int err)
{
 if (err != -EINPROGRESS)
  aead_request_complete(req, err);
}
