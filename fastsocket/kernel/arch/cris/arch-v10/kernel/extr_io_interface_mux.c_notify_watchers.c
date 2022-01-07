
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watcher {struct watcher* next; int (* notify ) (unsigned int const,unsigned int const,unsigned char const,unsigned char const) ;} ;


 int DBG (int ) ;
 scalar_t__ gpio_in_pins ;
 scalar_t__ gpio_out_pins ;
 scalar_t__ gpio_pa_pins ;
 scalar_t__ gpio_pb_pins ;
 int printk (char*) ;
 int stub1 (unsigned int const,unsigned int const,unsigned char const,unsigned char const) ;
 struct watcher* watchers ;

__attribute__((used)) static void notify_watchers(void)
{
 struct watcher *w = watchers;

 DBG(printk("io_interface_mux: notifying watchers\n"));

 while (((void*)0) != w) {
  w->notify((const unsigned int)gpio_in_pins,
     (const unsigned int)gpio_out_pins,
     (const unsigned char)gpio_pa_pins,
     (const unsigned char)gpio_pb_pins);
  w = w->next;
 }
}
