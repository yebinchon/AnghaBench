
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_2__ {int in_use; } ;


 int EBUSY ;
 TYPE_1__ ardev ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int ar_exclusive_open(struct file *file)
{
 return test_and_set_bit(0, &ardev.in_use) ? -EBUSY : 0;
}
