
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;


 struct gendisk* alloc_disk_node (int,int) ;

struct gendisk *alloc_disk(int minors)
{
 return alloc_disk_node(minors, -1);
}
