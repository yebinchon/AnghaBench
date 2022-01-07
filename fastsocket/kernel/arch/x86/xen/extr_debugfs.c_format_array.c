
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t snprintf (char*,size_t,char const*,int ) ;

__attribute__((used)) static size_t format_array(char *buf, size_t bufsize, const char *fmt,
      u32 *array, unsigned array_size)
{
 size_t ret = 0;
 unsigned i;

 for(i = 0; i < array_size; i++) {
  size_t len;

  len = snprintf(buf, bufsize, fmt, array[i]);
  len++;
  ret += len;

  if (buf) {
   buf += len;
   bufsize -= len;
   buf[-1] = (i == array_size-1) ? '\n' : ' ';
  }
 }

 ret++;
 if (buf)
  *buf = '\0';

 return ret;
}
