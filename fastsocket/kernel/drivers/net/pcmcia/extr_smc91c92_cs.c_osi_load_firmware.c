
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ BasePort1; } ;
struct pcmcia_device {TYPE_1__ io; int dev; } ;
struct firmware {int size; int * data; } ;


 int FIRMWARE_NAME ;
 int outb (int ,scalar_t__) ;
 int pr_err (char*,int ) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static int osi_load_firmware(struct pcmcia_device *link)
{
 const struct firmware *fw;
 int i, err;

 err = request_firmware(&fw, FIRMWARE_NAME, &link->dev);
 if (err) {
  pr_err("Failed to load firmware \"%s\"\n", FIRMWARE_NAME);
  return err;
 }


 for (i = 0; i < fw->size; i++) {
     outb(fw->data[i], link->io.BasePort1 + 2);
     udelay(50);
 }
 release_firmware(fw);
 return err;
}
