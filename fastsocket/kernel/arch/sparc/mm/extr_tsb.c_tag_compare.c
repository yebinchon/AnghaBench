
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int tag_compare(unsigned long tag, unsigned long vaddr)
{
 return (tag == (vaddr >> 22));
}
