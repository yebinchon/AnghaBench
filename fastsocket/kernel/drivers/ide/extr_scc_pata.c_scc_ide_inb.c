
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int in_be32 (void*) ;

__attribute__((used)) static u8 scc_ide_inb(unsigned long port)
{
 u32 data = in_be32((void*)port);
 return (u8)data;
}
