
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * parent; } ;
struct TYPE_9__ {struct TYPE_9__* adapter; struct cx231xx_i2c* algo_data; struct cx231xx_i2c* data; int name; TYPE_1__ dev; } ;
struct cx231xx_i2c {scalar_t__ i2c_rc; int nr; TYPE_3__ i2c_client; TYPE_3__ i2c_adap; TYPE_3__ i2c_algo; struct cx231xx* dev; } ;
struct cx231xx {int name; int v4l2_dev; TYPE_2__* udev; int cx231xx_send_usb_command; } ;
struct TYPE_8__ {int dev; } ;


 int BUG_ON (int) ;
 int cx231xx_adap_template ;
 int cx231xx_algo ;
 int cx231xx_client_template ;
 int cx231xx_do_i2c_scan (struct cx231xx*,TYPE_3__*) ;
 int cx231xx_warn (char*,int ,int ) ;
 int i2c_add_adapter (TYPE_3__*) ;
 scalar_t__ i2c_scan ;
 int i2c_set_adapdata (TYPE_3__*,int *) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int strlcpy (int ,int ,int) ;

int cx231xx_i2c_register(struct cx231xx_i2c *bus)
{
 struct cx231xx *dev = bus->dev;

 BUG_ON(!dev->cx231xx_send_usb_command);

 memcpy(&bus->i2c_adap, &cx231xx_adap_template, sizeof(bus->i2c_adap));
 memcpy(&bus->i2c_algo, &cx231xx_algo, sizeof(bus->i2c_algo));
 memcpy(&bus->i2c_client, &cx231xx_client_template,
        sizeof(bus->i2c_client));

 bus->i2c_adap.dev.parent = &dev->udev->dev;

 strlcpy(bus->i2c_adap.name, bus->dev->name, sizeof(bus->i2c_adap.name));

 bus->i2c_algo.data = bus;
 bus->i2c_adap.algo_data = bus;
 i2c_set_adapdata(&bus->i2c_adap, &dev->v4l2_dev);
 i2c_add_adapter(&bus->i2c_adap);

 bus->i2c_client.adapter = &bus->i2c_adap;

 if (0 == bus->i2c_rc) {
  if (i2c_scan)
   cx231xx_do_i2c_scan(dev, &bus->i2c_client);
 } else
  cx231xx_warn("%s: i2c bus %d register FAILED\n",
        dev->name, bus->nr);

 return bus->i2c_rc;
}
