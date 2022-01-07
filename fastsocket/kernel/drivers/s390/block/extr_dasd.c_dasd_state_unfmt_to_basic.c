
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int state; } ;


 int DASD_STATE_BASIC ;

__attribute__((used)) static int dasd_state_unfmt_to_basic(struct dasd_device *device)
{
 device->state = DASD_STATE_BASIC;
 return 0;
}
