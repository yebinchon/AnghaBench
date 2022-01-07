
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __srmmu_get_nocache (int,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static unsigned long srmmu_get_nocache(int size, int align)
{
 unsigned long tmp;

 tmp = __srmmu_get_nocache(size, align);

 if (tmp)
  memset((void *)tmp, 0, size);

 return tmp;
}
