
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long _PAGE_CACHE_MASK ;





__attribute__((used)) static char *cattr_name(unsigned long flags)
{
 switch (flags & _PAGE_CACHE_MASK) {
 case 131: return "uncached";
 case 130: return "uncached-minus";
 case 129: return "write-back";
 case 128: return "write-combining";
 default: return "broken";
 }
}
