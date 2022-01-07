
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 scalar_t__ isolated_loader ;
 int isolated_loader_size ;

__attribute__((used)) static void spufs_exit_isolated_loader(void)
{
 free_pages((unsigned long) isolated_loader,
   get_order(isolated_loader_size));
}
