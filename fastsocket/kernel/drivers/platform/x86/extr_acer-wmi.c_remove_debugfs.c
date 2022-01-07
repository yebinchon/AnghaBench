
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; int devices; } ;
struct TYPE_4__ {TYPE_1__ debug; } ;


 int debugfs_remove (int ) ;
 TYPE_2__* interface ;

__attribute__((used)) static void remove_debugfs(void)
{
 debugfs_remove(interface->debug.devices);
 debugfs_remove(interface->debug.root);
}
