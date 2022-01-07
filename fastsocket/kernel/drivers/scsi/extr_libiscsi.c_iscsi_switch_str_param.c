
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_NOIO ;
 int kfree (char*) ;
 char* kstrdup (char*,int ) ;
 int strcmp (char*,char*) ;

int iscsi_switch_str_param(char **param, char *new_val_buf)
{
 char *new_val;

 if (*param) {
  if (!strcmp(*param, new_val_buf))
   return 0;
 }

 new_val = kstrdup(new_val_buf, GFP_NOIO);
 if (!new_val)
  return -ENOMEM;

 kfree(*param);
 *param = new_val;
 return 0;
}
