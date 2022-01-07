
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int ablk_perform (struct ablkcipher_request*,int ) ;

__attribute__((used)) static int ablk_decrypt(struct ablkcipher_request *req)
{
 return ablk_perform(req, 0);
}
