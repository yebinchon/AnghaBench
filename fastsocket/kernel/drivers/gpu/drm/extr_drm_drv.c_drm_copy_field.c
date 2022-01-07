
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 scalar_t__ copy_to_user (char*,char const*,int) ;
 void* strlen (char const*) ;

__attribute__((used)) static int drm_copy_field(char *buf, size_t *buf_len, const char *value)
{
 int len;


 len = strlen(value);
 if (len > *buf_len)
  len = *buf_len;



 *buf_len = strlen(value);


 if (len && buf)
  if (copy_to_user(buf, value, len))
   return -EFAULT;
 return 0;
}
