
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int iobase; } ;
struct tpm_chip {TYPE_1__ vendor; int dev; } ;


 int dev_dbg (int ,char*,...) ;
 int iowrite8 (int ,int ) ;

__attribute__((used)) static int tpm_atml_send(struct tpm_chip *chip, u8 *buf, size_t count)
{
 int i;

 dev_dbg(chip->dev, "tpm_atml_send:\n");
 for (i = 0; i < count; i++) {
  dev_dbg(chip->dev, "%d 0x%x(%d)\n", i, buf[i], buf[i]);
   iowrite8(buf[i], chip->vendor.iobase);
 }

 return count;
}
