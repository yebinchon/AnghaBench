
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ctrl_inl (int) ;

__attribute__((used)) static int bb_read(u32 addr, u32 msk)
{
 return (ctrl_inl(addr) & msk) != 0;
}
