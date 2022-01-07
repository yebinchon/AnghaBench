
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* block; } ;
struct dasd_ccw_req {int stopclk; int status; struct dasd_device* startdev; } ;
struct TYPE_2__ {int bp_block; } ;


 int DASD_CQR_CLEAR_PENDING ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int get_clock () ;
 int mdsk_init_io (struct dasd_device*,int ,int ,int *) ;
 int mdsk_term_io (struct dasd_device*) ;

__attribute__((used)) static int
dasd_diag_term_IO(struct dasd_ccw_req * cqr)
{
 struct dasd_device *device;

 device = cqr->startdev;
 mdsk_term_io(device);
 mdsk_init_io(device, device->block->bp_block, 0, ((void*)0));
 cqr->status = DASD_CQR_CLEAR_PENDING;
 cqr->stopclk = get_clock();
 dasd_schedule_device_bh(device);
 return 0;
}
