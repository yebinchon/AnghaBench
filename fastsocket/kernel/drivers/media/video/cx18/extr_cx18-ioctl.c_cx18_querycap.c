
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct cx18_open_id {struct cx18* cx; } ;
struct cx18 {int v4l2_cap; int pci_dev; int card_name; } ;


 int CX18_DRIVER_NAME ;
 int CX18_DRIVER_VERSION ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int cx18_querycap(struct file *file, void *fh,
    struct v4l2_capability *vcap)
{
 struct cx18 *cx = ((struct cx18_open_id *)fh)->cx;

 strlcpy(vcap->driver, CX18_DRIVER_NAME, sizeof(vcap->driver));
 strlcpy(vcap->card, cx->card_name, sizeof(vcap->card));
 snprintf(vcap->bus_info, sizeof(vcap->bus_info),
   "PCI:%s", pci_name(cx->pci_dev));
 vcap->version = CX18_DRIVER_VERSION;
 vcap->capabilities = cx->v4l2_cap;
 return 0;
}
