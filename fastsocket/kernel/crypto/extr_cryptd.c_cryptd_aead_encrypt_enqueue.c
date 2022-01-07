
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int cryptd_aead_encrypt ;
 int cryptd_aead_enqueue (struct aead_request*,int ) ;

__attribute__((used)) static int cryptd_aead_encrypt_enqueue(struct aead_request *req)
{
 return cryptd_aead_enqueue(req, cryptd_aead_encrypt );
}
