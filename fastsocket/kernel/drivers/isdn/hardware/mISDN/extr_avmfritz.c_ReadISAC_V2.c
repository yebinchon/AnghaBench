
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fritzcard {scalar_t__ addr; } ;


 scalar_t__ AVM_ISACX_DATA ;
 scalar_t__ AVM_ISACX_INDEX ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static u8
ReadISAC_V2(void *p, u8 offset)
{
 struct fritzcard *fc = p;

 outl(offset, fc->addr + AVM_ISACX_INDEX);
 return 0xff & inl(fc->addr + AVM_ISACX_DATA);
}
