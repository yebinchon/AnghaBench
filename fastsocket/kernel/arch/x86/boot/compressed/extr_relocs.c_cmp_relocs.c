
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cmp_relocs(const void *va, const void *vb)
{
 const unsigned long *a, *b;
 a = va; b = vb;
 return (*a == *b)? 0 : (*a > *b)? 1 : -1;
}
