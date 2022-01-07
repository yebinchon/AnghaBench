
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cword {int dummy; } ;


 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int * cbc_crypt_copy (int const*,int *,int *,int *,struct cword*,int) ;
 scalar_t__ cbc_fetch_bytes ;
 int * rep_xcrypt_cbc (int const*,int *,int *,int *,struct cword*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u8 *cbc_crypt(const u8 *in, u8 *out, u32 *key,
       u8 *iv, struct cword *cword, int count)
{

 if (unlikely(((unsigned long)in & ~PAGE_MASK) + cbc_fetch_bytes > PAGE_SIZE))
  return cbc_crypt_copy(in, out, key, iv, cword, count);

 return rep_xcrypt_cbc(in, out, key, iv, cword, count);
}
