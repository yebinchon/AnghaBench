
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousevsc_dev {int device; struct mousevsc_dev* report_desc; struct mousevsc_dev* hid_desc; } ;


 int hv_set_drvdata (int ,int *) ;
 int kfree (struct mousevsc_dev*) ;

__attribute__((used)) static void mousevsc_free_device(struct mousevsc_dev *device)
{
 kfree(device->hid_desc);
 kfree(device->report_desc);
 hv_set_drvdata(device->device, ((void*)0));
 kfree(device);
}
