
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct fb_data_t {char* value; } ;


 int EFAULT ;
 unsigned long FOOBAR_LEN ;
 scalar_t__ copy_from_user (char*,char const*,int) ;

__attribute__((used)) static int proc_write_foobar(struct file *file,
        const char *buffer,
        unsigned long count,
        void *data)
{
 int len;
 struct fb_data_t *fb_data = (struct fb_data_t *)data;

 if(count > FOOBAR_LEN)
  len = FOOBAR_LEN;
 else
  len = count;

 if(copy_from_user(fb_data->value, buffer, len))
  return -EFAULT;

 fb_data->value[len] = '\0';

 return len;
}
