
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 void* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_pages (int ,int ) ;
 void* diag204_buf ;
 int diag204_buf_pages ;

__attribute__((used)) static void *diag204_alloc_rbuf(void)
{
 diag204_buf = (void*)__get_free_pages(GFP_KERNEL,0);
 if (!diag204_buf)
  return ERR_PTR(-ENOMEM);
 diag204_buf_pages = 1;
 return diag204_buf;
}
