
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int raid_disk; int minor; int major; int number; } ;
typedef TYPE_1__ mdp_disk_t ;


 int printk (char*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void print_desc(mdp_disk_t *desc)
{
 printk(" DISK<N:%d,(%d,%d),R:%d,S:%d>\n", desc->number,
  desc->major,desc->minor,desc->raid_disk,desc->state);
}
