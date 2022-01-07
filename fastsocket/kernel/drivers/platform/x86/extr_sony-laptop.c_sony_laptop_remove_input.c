
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifo; int wq; int * jog_dev; int * key_dev; int users; } ;


 int atomic_dec_and_test (int *) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int input_unregister_device (int *) ;
 int kfifo_free (int ) ;
 TYPE_1__ sony_laptop_input ;

__attribute__((used)) static void sony_laptop_remove_input(void)
{

 if (!atomic_dec_and_test(&sony_laptop_input.users))
  return;


 flush_workqueue(sony_laptop_input.wq);


 input_unregister_device(sony_laptop_input.key_dev);
 sony_laptop_input.key_dev = ((void*)0);

 if (sony_laptop_input.jog_dev) {
  input_unregister_device(sony_laptop_input.jog_dev);
  sony_laptop_input.jog_dev = ((void*)0);
 }

 destroy_workqueue(sony_laptop_input.wq);
 kfifo_free(sony_laptop_input.fifo);
}
