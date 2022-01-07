
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mousevsc_dev {int init_complete; int wait_event; struct hv_device* device; } ;
struct hv_device {int dummy; } ;


 int GFP_KERNEL ;
 int hv_set_drvdata (struct hv_device*,struct mousevsc_dev*) ;
 int init_completion (int *) ;
 struct mousevsc_dev* kzalloc (int,int ) ;

__attribute__((used)) static struct mousevsc_dev *mousevsc_alloc_device(struct hv_device *device)
{
 struct mousevsc_dev *input_dev;

 input_dev = kzalloc(sizeof(struct mousevsc_dev), GFP_KERNEL);

 if (!input_dev)
  return ((void*)0);

 input_dev->device = device;
 hv_set_drvdata(device, input_dev);
 init_completion(&input_dev->wait_event);
 input_dev->init_complete = 0;

 return input_dev;
}
