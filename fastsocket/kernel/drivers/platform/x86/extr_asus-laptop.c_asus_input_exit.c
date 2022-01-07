
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ inputdev; } ;


 TYPE_1__* hotk ;
 int input_unregister_device (scalar_t__) ;

__attribute__((used)) static void asus_input_exit(void)
{
 if (hotk->inputdev)
  input_unregister_device(hotk->inputdev);
}
