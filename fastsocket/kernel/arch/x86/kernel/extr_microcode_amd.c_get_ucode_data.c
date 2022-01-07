
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (void*,int const*,size_t) ;

__attribute__((used)) static int get_ucode_data(void *to, const u8 *from, size_t n)
{
 memcpy(to, from, n);
 return 0;
}
