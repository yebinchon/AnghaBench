
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 scalar_t__* cmdline ;
 size_t len ;
 int memcpy (scalar_t__*,char const*,unsigned long) ;

__attribute__((used)) static int test_write_proc(struct file *file, const char *buffer,
     unsigned long count, void *data)
{
 if (count >= 256)
  len = 255;
 else
  len = count;

 memcpy(cmdline, buffer, count);
 cmdline[len] = 0;

 return len;
}
