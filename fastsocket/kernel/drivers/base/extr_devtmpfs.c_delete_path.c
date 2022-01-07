
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_rmdir (char const*) ;
 int kfree (char const*) ;
 char* kstrdup (char const*,int ) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int delete_path(const char *nodepath)
{
 const char *path;
 int err = 0;

 path = kstrdup(nodepath, GFP_KERNEL);
 if (!path)
  return -ENOMEM;

 while (1) {
  char *base;

  base = strrchr(path, '/');
  if (!base)
   break;
  base[0] = '\0';
  err = dev_rmdir(path);
  if (err)
   break;
 }

 kfree(path);
 return err;
}
