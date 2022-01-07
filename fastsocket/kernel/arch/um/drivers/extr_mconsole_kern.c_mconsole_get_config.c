
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_request {int dummy; } ;


 int ARRAY_SIZE (char*) ;
 int CONFIG_BUF_SIZE ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int mconsole_reply (struct mc_request*,char*,int,int ) ;
 int stub1 (char*,char*,int,char**) ;

__attribute__((used)) static void mconsole_get_config(int (*get_config)(char *, char *, int,
        char **),
    struct mc_request *req, char *name)
{
 char default_buf[CONFIG_BUF_SIZE], *error, *buf;
 int n, size;

 if (get_config == ((void*)0)) {
  mconsole_reply(req, "No get_config routine defined", 1, 0);
  return;
 }

 error = ((void*)0);
 size = ARRAY_SIZE(default_buf);
 buf = default_buf;

 while (1) {
  n = (*get_config)(name, buf, size, &error);
  if (error != ((void*)0)) {
   mconsole_reply(req, error, 1, 0);
   goto out;
  }

  if (n <= size) {
   mconsole_reply(req, buf, 0, 0);
   goto out;
  }

  if (buf != default_buf)
   kfree(buf);

  size = n;
  buf = kmalloc(size, GFP_KERNEL);
  if (buf == ((void*)0)) {
   mconsole_reply(req, "Failed to allocate buffer", 1, 0);
   return;
  }
 }
 out:
 if (buf != default_buf)
  kfree(buf);
}
