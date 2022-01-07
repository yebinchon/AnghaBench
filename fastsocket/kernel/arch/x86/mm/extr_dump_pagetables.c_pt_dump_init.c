
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {void* start_address; } ;


 int ENOMEM ;
 void* FIXADDR_START ;
 void* PKMAP_BASE ;
 void* VMALLOC_END ;
 void* VMALLOC_START ;
 TYPE_1__* address_markers ;
 struct dentry* debugfs_create_file (char*,int,int *,int *,int *) ;
 int ptdump_fops ;

__attribute__((used)) static int pt_dump_init(void)
{
 struct dentry *pe;
 pe = debugfs_create_file("kernel_page_tables", 0600, ((void*)0), ((void*)0),
     &ptdump_fops);
 if (!pe)
  return -ENOMEM;

 return 0;
}
