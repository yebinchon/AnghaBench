
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int memcpy (char*,char const*,size_t) ;
 size_t min (size_t,size_t) ;
 int simple_strtol (char*,int *,int) ;

__attribute__((used)) static int get_integer(const char *buf, size_t count)
{
 char tmp[10 + 1] = { 0 };
 int ret = -EINVAL;

 if (count == 0)
  goto out;
 count = min(count, (size_t) 10);
 memcpy(tmp, buf, count);
 ret = simple_strtol(tmp, ((void*)0), 10);
      out:
 return ret;
}
