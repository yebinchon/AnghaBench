
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int in_be32 (void*) ;
 void* le16_to_cpu (int ) ;

__attribute__((used)) static void scc_ide_insl(unsigned long port, void *addr, u32 count)
{
 u16 *ptr = (u16 *)addr;
 while (count--) {
  *ptr++ = le16_to_cpu(in_be32((void*)port));
  *ptr++ = le16_to_cpu(in_be32((void*)port));
 }
}
