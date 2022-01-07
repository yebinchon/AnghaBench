
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vstor_packet {int operation; } ;
struct storvsc_scan_work {int work; int host; } ;
struct storvsc_device {int host; } ;
struct storvsc_cmd_request {int dummy; } ;
struct hv_device {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;



 struct storvsc_device* get_in_stor_device (struct hv_device*) ;
 struct storvsc_scan_work* kmalloc (int,int ) ;
 int schedule_work (int *) ;
 int storvsc_bus_scan ;
 int storvsc_on_io_completion (struct hv_device*,struct vstor_packet*,struct storvsc_cmd_request*) ;

__attribute__((used)) static void storvsc_on_receive(struct hv_device *device,
        struct vstor_packet *vstor_packet,
        struct storvsc_cmd_request *request)
{
 struct storvsc_scan_work *work;
 struct storvsc_device *stor_device;

 switch (vstor_packet->operation) {
 case 130:
  storvsc_on_io_completion(device, vstor_packet, request);
  break;

 case 128:
 case 129:
  stor_device = get_in_stor_device(device);
  work = kmalloc(sizeof(struct storvsc_scan_work), GFP_ATOMIC);
  if (!work)
   return;

  INIT_WORK(&work->work, storvsc_bus_scan);
  work->host = stor_device->host;
  schedule_work(&work->work);
  break;

 default:
  break;
 }
}
