
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int * parent; } ;
struct pvr2_v4l2_dev {TYPE_1__ devbase; } ;


 int DPM_ORDER_NONE ;
 int device_move (int *,int *,int ) ;

__attribute__((used)) static void pvr2_v4l2_dev_disassociate_parent(struct pvr2_v4l2_dev *dip)
{
 if (!dip) return;
 if (!dip->devbase.parent) return;
 dip->devbase.parent = ((void*)0);
 device_move(&dip->devbase.dev, ((void*)0), DPM_ORDER_NONE);
}
