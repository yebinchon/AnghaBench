
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int resource_size_t ;


 int ALIGN (int,int) ;

__attribute__((used)) static resource_size_t calculate_memsize(resource_size_t size,
  resource_size_t min_size,
  resource_size_t size1,
  resource_size_t old_size,
  resource_size_t align)
{
 if (size < min_size)
  size = min_size;
 if (old_size == 1 )
  old_size = 0;
 if (size < old_size)
  size = old_size;
 size = ALIGN(size + size1, align);
 return size;
}
