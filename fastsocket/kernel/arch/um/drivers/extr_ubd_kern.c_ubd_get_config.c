
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* file; } ;
struct ubd {char* file; TYPE_1__ cow; } ;


 int CONFIG_CHUNK (char*,int,int,char*,int) ;
 int MAX_DEV ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parse_unit (char**) ;
 struct ubd* ubd_devs ;
 int ubd_lock ;

__attribute__((used)) static int ubd_get_config(char *name, char *str, int size, char **error_out)
{
 struct ubd *ubd_dev;
 int n, len = 0;

 n = parse_unit(&name);
 if((n >= MAX_DEV) || (n < 0)){
  *error_out = "ubd_get_config : device number out of range";
  return -1;
 }

 ubd_dev = &ubd_devs[n];
 mutex_lock(&ubd_lock);

 if(ubd_dev->file == ((void*)0)){
  CONFIG_CHUNK(str, size, len, "", 1);
  goto out;
 }

 CONFIG_CHUNK(str, size, len, ubd_dev->file, 0);

 if(ubd_dev->cow.file != ((void*)0)){
  CONFIG_CHUNK(str, size, len, ",", 0);
  CONFIG_CHUNK(str, size, len, ubd_dev->cow.file, 1);
 }
 else CONFIG_CHUNK(str, size, len, "", 1);

 out:
 mutex_unlock(&ubd_lock);
 return len;
}
