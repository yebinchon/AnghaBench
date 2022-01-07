
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,size_t) ;

__attribute__((used)) static int get_ucode_fw(void *to, const void *from, size_t n)
{
 memcpy(to, from, n);
 return 0;
}
