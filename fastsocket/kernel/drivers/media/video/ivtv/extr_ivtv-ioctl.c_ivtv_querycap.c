
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int v4l2_cap; int pdev; int card_name; } ;
struct file {int dummy; } ;


 int IVTV_DRIVER_NAME ;
 int IVTV_DRIVER_VERSION ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int ivtv_querycap(struct file *file, void *fh, struct v4l2_capability *vcap)
{
 struct ivtv *itv = ((struct ivtv_open_id *)fh)->itv;

 strlcpy(vcap->driver, IVTV_DRIVER_NAME, sizeof(vcap->driver));
 strlcpy(vcap->card, itv->card_name, sizeof(vcap->card));
 snprintf(vcap->bus_info, sizeof(vcap->bus_info), "PCI:%s", pci_name(itv->pdev));
 vcap->version = IVTV_DRIVER_VERSION;
 vcap->capabilities = itv->v4l2_cap;
 return 0;
}
