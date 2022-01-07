
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_device {size_t type; int id; TYPE_1__* adapter; } ;
struct device {int dummy; } ;
typedef int mode_t ;
struct TYPE_2__ {int num; } ;


 int GFP_KERNEL ;
 struct dvb_device* dev_get_drvdata (struct device*) ;
 int * dnames ;
 char* kasprintf (int ,char*,int ,int ,int ) ;

__attribute__((used)) static char *dvb_devnode(struct device *dev, mode_t *mode)
{
 struct dvb_device *dvbdev = dev_get_drvdata(dev);

 return kasprintf(GFP_KERNEL, "dvb/adapter%d/%s%d",
  dvbdev->adapter->num, dnames[dvbdev->type], dvbdev->id);
}
