
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {scalar_t__ block; } ;


 int DASD_STOPPED_PENDING ;
 int dasd_device_remove_stop_bits (struct dasd_device*,int ) ;
 int dasd_eer_snss (struct dasd_device*) ;
 int dasd_schedule_block_bh (scalar_t__) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;

void dasd_generic_handle_state_change(struct dasd_device *device)
{

 dasd_eer_snss(device);

 dasd_device_remove_stop_bits(device, DASD_STOPPED_PENDING);
 dasd_schedule_device_bh(device);
 if (device->block)
  dasd_schedule_block_bh(device->block);
}
