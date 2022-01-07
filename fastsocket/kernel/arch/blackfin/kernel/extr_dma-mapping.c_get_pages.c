
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PAGE_SHIFT ;

__attribute__((used)) static inline unsigned int get_pages(size_t size)
{
 return ((size - 1) >> PAGE_SHIFT) + 1;
}
