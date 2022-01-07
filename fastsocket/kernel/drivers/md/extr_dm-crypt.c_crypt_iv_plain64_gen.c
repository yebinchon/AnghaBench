
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct crypt_config {int iv_size; } ;
typedef int sector_t ;


 int cpu_to_le64 (int ) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static int crypt_iv_plain64_gen(struct crypt_config *cc, u8 *iv,
    sector_t sector)
{
 memset(iv, 0, cc->iv_size);
 *(u64 *)iv = cpu_to_le64(sector);

 return 0;
}
