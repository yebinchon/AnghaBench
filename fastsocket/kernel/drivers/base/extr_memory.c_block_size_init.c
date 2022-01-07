
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int attr; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ kset; } ;


 TYPE_3__ class_attr_block_size_bytes ;
 TYPE_2__ memory_sysdev_class ;
 int sysfs_create_file (int *,int *) ;

__attribute__((used)) static int block_size_init(void)
{
 return sysfs_create_file(&memory_sysdev_class.kset.kobj,
    &class_attr_block_size_bytes.attr);
}
