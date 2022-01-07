
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_givcrypt_request {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int no_givcrypt(struct aead_givcrypt_request *req)
{
 return -ENOSYS;
}
