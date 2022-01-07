
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cword {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int MAX_ECB_FETCH_BLOCKS ;
 int PADLOCK_ALIGNMENT ;
 int * PTR_ALIGN (int *,int) ;
 int memcpy (int *,int const*,int) ;
 int rep_xcrypt_ecb (int *,int *,int *,struct cword*,int) ;

__attribute__((used)) static void ecb_crypt_copy(const u8 *in, u8 *out, u32 *key,
      struct cword *cword, int count)
{




 u8 buf[AES_BLOCK_SIZE * (MAX_ECB_FETCH_BLOCKS - 1) + PADLOCK_ALIGNMENT - 1];
 u8 *tmp = PTR_ALIGN(&buf[0], PADLOCK_ALIGNMENT);

 memcpy(tmp, in, count * AES_BLOCK_SIZE);
 rep_xcrypt_ecb(tmp, out, key, cword, count);
}
