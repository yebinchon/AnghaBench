
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_3__ {int tfm; } ;
struct TYPE_4__ {TYPE_1__ essiv; } ;
struct crypt_config {TYPE_2__ iv_gen_private; int iv_size; } ;
typedef int sector_t ;


 int cpu_to_le64 (int ) ;
 int crypto_cipher_encrypt_one (int ,int *,int *) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static int crypt_iv_essiv_gen(struct crypt_config *cc, u8 *iv, sector_t sector)
{
 memset(iv, 0, cc->iv_size);
 *(u64 *)iv = cpu_to_le64(sector);
 crypto_cipher_encrypt_one(cc->iv_gen_private.essiv.tfm, iv, iv);
 return 0;
}
