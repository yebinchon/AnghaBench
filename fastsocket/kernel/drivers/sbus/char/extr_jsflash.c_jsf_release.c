
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ busy; } ;


 TYPE_1__ jsf0 ;

__attribute__((used)) static int jsf_release(struct inode *inode, struct file *file)
{
 jsf0.busy = 0;
 return 0;
}
