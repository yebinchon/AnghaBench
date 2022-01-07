
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct usbnet {TYPE_1__* net; } ;
struct TYPE_2__ {int name; } ;


 int ENOLINK ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int REG_STATUS ;
 int STATUS_CONN_OTHER ;
 int dbg (char*,int ,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int nc_register_read (struct usbnet*,int ,int*) ;

__attribute__((used)) static int net1080_check_connect(struct usbnet *dev)
{
 int retval;
 u16 status;
 u16 *vp = kmalloc(sizeof (u16), GFP_KERNEL);

 if (!vp)
  return -ENOMEM;
 retval = nc_register_read(dev, REG_STATUS, vp);
 status = *vp;
 kfree(vp);
 if (retval != 0) {
  dbg("%s net1080_check_conn read - %d", dev->net->name, retval);
  return retval;
 }
 if ((status & STATUS_CONN_OTHER) != STATUS_CONN_OTHER)
  return -ENOLINK;
 return 0;
}
