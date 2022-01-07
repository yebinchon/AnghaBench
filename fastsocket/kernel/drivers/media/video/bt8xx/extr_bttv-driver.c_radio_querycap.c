
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct TYPE_3__ {int pci; } ;
struct bttv {TYPE_1__ c; TYPE_2__* radio_dev; } ;
struct TYPE_4__ {int name; } ;


 int BTTV_VERSION_CODE ;
 int V4L2_CAP_TUNER ;
 char* pci_name (int ) ;
 int sprintf (int ,char*,char*) ;
 int strcpy (int ,char*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int radio_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct bttv_fh *fh = priv;
 struct bttv *btv = fh->btv;

 strcpy(cap->driver, "bttv");
 strlcpy(cap->card, btv->radio_dev->name, sizeof(cap->card));
 sprintf(cap->bus_info, "PCI:%s", pci_name(btv->c.pci));
 cap->version = BTTV_VERSION_CODE;
 cap->capabilities = V4L2_CAP_TUNER;

 return 0;
}
