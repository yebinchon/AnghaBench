
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ctrl_inl (int) ;
 int ctrl_outl (int,int) ;

__attribute__((used)) static void bb_set(u32 addr, u32 msk)
{
 ctrl_outl(ctrl_inl(addr) | msk, addr);
}
