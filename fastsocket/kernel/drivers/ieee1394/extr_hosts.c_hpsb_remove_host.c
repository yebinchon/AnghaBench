
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int is_shutdown; int device; int host_dev; int * driver; int delayed_reset; } ;


 int cancel_delayed_work (int *) ;
 int device_unregister (int *) ;
 int dummy_driver ;
 int flush_scheduled_work () ;
 int highlevel_remove_host (struct hpsb_host*) ;

void hpsb_remove_host(struct hpsb_host *host)
{
 host->is_shutdown = 1;

 cancel_delayed_work(&host->delayed_reset);
 flush_scheduled_work();

 host->driver = &dummy_driver;
 highlevel_remove_host(host);

 device_unregister(&host->host_dev);
 device_unregister(&host->device);
}
