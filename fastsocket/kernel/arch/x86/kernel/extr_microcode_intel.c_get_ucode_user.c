
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_from_user (void*,void const*,size_t) ;

__attribute__((used)) static int get_ucode_user(void *to, const void *from, size_t n)
{
 return copy_from_user(to, from, n);
}
