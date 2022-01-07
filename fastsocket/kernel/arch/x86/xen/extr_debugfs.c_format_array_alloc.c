
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int GFP_KERNEL ;
 size_t format_array (char*,size_t,char const*,int *,unsigned int) ;
 char* kmalloc (size_t,int ) ;

__attribute__((used)) static char *format_array_alloc(const char *fmt, u32 *array, unsigned array_size)
{
 size_t len = format_array(((void*)0), 0, fmt, array, array_size);
 char *ret;

 ret = kmalloc(len, GFP_KERNEL);
 if (ret == ((void*)0))
  return ((void*)0);

 format_array(ret, len, fmt, array, array_size);
 return ret;
}
