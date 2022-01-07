
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int in_use; } ;


 TYPE_1__ ardev ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static int ar_exclusive_release(struct file *file)
{
 clear_bit(0, &ardev.in_use);
 return 0;
}
