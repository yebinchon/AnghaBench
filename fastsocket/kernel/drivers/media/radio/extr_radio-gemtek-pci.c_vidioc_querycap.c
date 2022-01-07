
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int capabilities; int version; int bus_info; int card; int driver; } ;
struct gemtek_pci {int pdev; } ;
struct file {int dummy; } ;


 int RADIO_VERSION ;
 int V4L2_CAP_RADIO ;
 int V4L2_CAP_TUNER ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,char*,int) ;
 struct gemtek_pci* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *v)
{
 struct gemtek_pci *card = video_drvdata(file);

 strlcpy(v->driver, "radio-gemtek-pci", sizeof(v->driver));
 strlcpy(v->card, "GemTek PCI Radio", sizeof(v->card));
 snprintf(v->bus_info, sizeof(v->bus_info), "PCI:%s", pci_name(card->pdev));
 v->version = RADIO_VERSION;
 v->capabilities = V4L2_CAP_TUNER | V4L2_CAP_RADIO;
 return 0;
}
