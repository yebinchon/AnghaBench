
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ENODEV ;
 int NVRAM_SIZE ;
 int * nvram_image ;

__attribute__((used)) static ssize_t core99_nvram_size(void)
{
 if (nvram_image == ((void*)0))
  return -ENODEV;
 return NVRAM_SIZE;
}
