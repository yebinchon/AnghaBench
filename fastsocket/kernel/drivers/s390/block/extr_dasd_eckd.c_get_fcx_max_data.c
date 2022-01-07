
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int* feature; } ;
struct dasd_eckd_private {TYPE_2__ features; TYPE_1__* gneq; } ;
struct dasd_device {TYPE_4__* cdev; scalar_t__ private; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {int fcx; } ;
struct TYPE_5__ {int* reserved2; } ;


 int FCX_MAX_DATA_FACTOR ;
 int ccw_device_get_mdc (TYPE_4__*,int ) ;
 TYPE_3__ css_general_characteristics ;
 scalar_t__ dasd_nofcx ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static u32 get_fcx_max_data(struct dasd_device *device)
{
 return 0;

}
