
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpagesize () ;

__attribute__((used)) static inline unsigned long page_align(unsigned long addr)
{

 return ((addr + getpagesize()-1) & ~(getpagesize()-1));
}
