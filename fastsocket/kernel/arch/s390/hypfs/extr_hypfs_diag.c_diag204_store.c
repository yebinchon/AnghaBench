
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ERR_PTR (int) ;
 scalar_t__ IS_ERR (void*) ;
 int diag204_do_store (void*,int) ;
 void* diag204_get_buffer (int ,int*) ;
 int diag204_info_type ;

__attribute__((used)) static void *diag204_store(void)
{
 void *buf;
 int pages, rc;

 buf = diag204_get_buffer(diag204_info_type, &pages);
 if (IS_ERR(buf))
  goto out;
 rc = diag204_do_store(buf, pages);
 if (rc)
  return ERR_PTR(rc);
out:
 return buf;
}
