
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;
struct fcram_hash_ipv4 {int header; } ;
typedef int ent ;


 unsigned long FCRAM_SIZE ;
 int HASH_HEADER_EXT ;
 int hash_write (struct niu*,int ,unsigned long,int,int *) ;
 int memset (struct fcram_hash_ipv4*,int ,int) ;

__attribute__((used)) static int fflp_hash_clear(struct niu *np)
{
 struct fcram_hash_ipv4 ent;
 unsigned long i;


 memset(&ent, 0, sizeof(ent));
 ent.header = HASH_HEADER_EXT;

 for (i = 0; i < FCRAM_SIZE; i += sizeof(ent)) {
  int err = hash_write(np, 0, i, 1, (u64 *) &ent);
  if (err)
   return err;
 }
 return 0;
}
