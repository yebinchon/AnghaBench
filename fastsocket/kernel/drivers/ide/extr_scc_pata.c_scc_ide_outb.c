
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int out_be32 (void*,int ) ;

__attribute__((used)) static void scc_ide_outb(u8 addr, unsigned long port)
{
 out_be32((void*)port, addr);
}
