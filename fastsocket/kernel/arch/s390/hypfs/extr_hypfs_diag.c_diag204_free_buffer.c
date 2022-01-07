
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * diag204_buf ;
 int * diag204_buf_vmalloc ;
 int free_pages (unsigned long,int ) ;
 int vfree (int *) ;

__attribute__((used)) static void diag204_free_buffer(void)
{
 if (!diag204_buf)
  return;
 if (diag204_buf_vmalloc) {
  vfree(diag204_buf_vmalloc);
  diag204_buf_vmalloc = ((void*)0);
 } else {
  free_pages((unsigned long) diag204_buf, 0);
 }
 diag204_buf = ((void*)0);
}
