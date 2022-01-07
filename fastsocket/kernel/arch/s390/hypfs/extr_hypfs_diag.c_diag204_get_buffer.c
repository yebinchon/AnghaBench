
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum diag204_format { ____Placeholder_diag204_format } diag204_format ;


 int ENOSYS ;
 void* ERR_PTR (int ) ;
 scalar_t__ INFO_EXT ;
 int INFO_SIMPLE ;
 scalar_t__ SUBC_RSI ;
 int diag204 (unsigned long,int ,int *) ;
 void* diag204_alloc_rbuf () ;
 void* diag204_alloc_vbuf (int) ;
 void* diag204_buf ;
 int diag204_buf_pages ;

__attribute__((used)) static void *diag204_get_buffer(enum diag204_format fmt, int *pages)
{
 if (diag204_buf) {
  *pages = diag204_buf_pages;
  return diag204_buf;
 }
 if (fmt == INFO_SIMPLE) {
  *pages = 1;
  return diag204_alloc_rbuf();
 } else {
  *pages = diag204((unsigned long)SUBC_RSI |
     (unsigned long)INFO_EXT, 0, ((void*)0));
  if (*pages <= 0)
   return ERR_PTR(-ENOSYS);
  else
   return diag204_alloc_vbuf(*pages);
 }
}
