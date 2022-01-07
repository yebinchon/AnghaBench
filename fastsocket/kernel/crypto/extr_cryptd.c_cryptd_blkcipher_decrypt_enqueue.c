
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int cryptd_blkcipher_decrypt ;
 int cryptd_blkcipher_enqueue (struct ablkcipher_request*,int ) ;

__attribute__((used)) static int cryptd_blkcipher_decrypt_enqueue(struct ablkcipher_request *req)
{
 return cryptd_blkcipher_enqueue(req, cryptd_blkcipher_decrypt);
}
