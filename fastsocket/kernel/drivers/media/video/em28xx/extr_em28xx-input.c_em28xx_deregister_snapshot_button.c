
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx {int * sbutton_input_dev; int sbutton_query_work; } ;


 int cancel_rearming_delayed_work (int *) ;
 int em28xx_info (char*) ;
 int input_unregister_device (int *) ;

void em28xx_deregister_snapshot_button(struct em28xx *dev)
{
 if (dev->sbutton_input_dev != ((void*)0)) {
  em28xx_info("Deregistering snapshot button\n");
  cancel_rearming_delayed_work(&dev->sbutton_query_work);
  input_unregister_device(dev->sbutton_input_dev);
  dev->sbutton_input_dev = ((void*)0);
 }
 return;
}
