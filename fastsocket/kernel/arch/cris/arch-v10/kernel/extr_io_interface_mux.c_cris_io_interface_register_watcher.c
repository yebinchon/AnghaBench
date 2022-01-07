
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watcher {void (* notify ) (unsigned int const,unsigned int const,unsigned char const,unsigned char const) ;struct watcher* next; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int cris_io_interface_init () ;
 scalar_t__ gpio_in_pins ;
 scalar_t__ gpio_out_pins ;
 scalar_t__ gpio_pa_pins ;
 scalar_t__ gpio_pb_pins ;
 struct watcher* kmalloc (int,int ) ;
 void stub1 (unsigned int const,unsigned int const,unsigned char const,unsigned char const) ;
 struct watcher* watchers ;

int cris_io_interface_register_watcher(void (*notify)(const unsigned int gpio_in_available,
                                                      const unsigned int gpio_out_available,
                                                      const unsigned char pa_available,
                                                      const unsigned char pb_available))
{
 struct watcher *w;

 (void)cris_io_interface_init();

 if (((void*)0) == notify) {
  return -EINVAL;
 }
 w = kmalloc(sizeof(*w), GFP_KERNEL);
 if (!w) {
  return -ENOMEM;
 }
 w->notify = notify;
 w->next = watchers;
 watchers = w;

 w->notify((const unsigned int)gpio_in_pins,
    (const unsigned int)gpio_out_pins,
    (const unsigned char)gpio_pa_pins,
    (const unsigned char)gpio_pb_pins);

 return 0;
}
