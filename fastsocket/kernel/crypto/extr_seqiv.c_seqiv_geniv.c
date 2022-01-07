
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct seqiv_ctx {int salt; } ;


 int cpu_to_be64 (int ) ;
 int crypto_xor (int *,int ,unsigned int) ;
 int memcpy (int *,int *,unsigned int) ;
 int memset (int *,int ,unsigned int) ;

__attribute__((used)) static void seqiv_geniv(struct seqiv_ctx *ctx, u8 *info, u64 seq,
   unsigned int ivsize)
{
 unsigned int len = ivsize;

 if (ivsize > sizeof(u64)) {
  memset(info, 0, ivsize - sizeof(u64));
  len = sizeof(u64);
 }
 seq = cpu_to_be64(seq);
 memcpy(info + ivsize - len, &seq, len);
 crypto_xor(info, ctx->salt, ivsize);
}
