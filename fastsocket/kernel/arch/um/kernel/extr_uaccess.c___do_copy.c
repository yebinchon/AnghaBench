
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,int) ;

__attribute__((used)) static void __do_copy(void *to, const void *from, int n)
{
 memcpy(to, from, n);
}
