
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fritzcard {scalar_t__ addr; } ;


 scalar_t__ AVM_ISACX_DATA ;
 scalar_t__ AVM_ISACX_INDEX ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void
WriteISAC_V2(void *p, u8 offset, u8 value)
{
 struct fritzcard *fc = p;

 outl(offset, fc->addr + AVM_ISACX_INDEX);
 outl(value, fc->addr + AVM_ISACX_DATA);
}
