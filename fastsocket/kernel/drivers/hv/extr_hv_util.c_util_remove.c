
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_util_service {int recv_buffer; int (* util_deinit ) () ;} ;
struct hv_device {int channel; } ;


 struct hv_util_service* hv_get_drvdata (struct hv_device*) ;
 int kfree (int ) ;
 int stub1 () ;
 int vmbus_close (int ) ;

__attribute__((used)) static int util_remove(struct hv_device *dev)
{
 struct hv_util_service *srv = hv_get_drvdata(dev);

 vmbus_close(dev->channel);
 if (srv->util_deinit)
  srv->util_deinit();
 kfree(srv->recv_buffer);

 return 0;
}
