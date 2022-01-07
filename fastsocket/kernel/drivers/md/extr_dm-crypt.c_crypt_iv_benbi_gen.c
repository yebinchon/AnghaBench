
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_3__ {int shift; } ;
struct TYPE_4__ {TYPE_1__ benbi; } ;
struct crypt_config {int iv_size; TYPE_2__ iv_gen_private; } ;
typedef int sector_t ;
typedef int __be64 ;


 int cpu_to_be64 (int) ;
 int memset (int *,int ,int) ;
 int put_unaligned (int ,int *) ;

__attribute__((used)) static int crypt_iv_benbi_gen(struct crypt_config *cc, u8 *iv, sector_t sector)
{
 __be64 val;

 memset(iv, 0, cc->iv_size - sizeof(u64));

 val = cpu_to_be64(((u64)sector << cc->iv_gen_private.benbi.shift) + 1);
 put_unaligned(val, (__be64 *)(iv + cc->iv_size - sizeof(u64)));

 return 0;
}
