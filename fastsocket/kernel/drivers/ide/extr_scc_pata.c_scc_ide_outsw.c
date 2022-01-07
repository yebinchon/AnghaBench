
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int cpu_to_le16 (int ) ;
 int out_be32 (void*,int ) ;

__attribute__((used)) static void
scc_ide_outsw(unsigned long port, void *addr, u32 count)
{
 u16 *ptr = (u16 *)addr;
 while (count--) {
  out_be32((void*)port, cpu_to_le16(*ptr++));
 }
}
