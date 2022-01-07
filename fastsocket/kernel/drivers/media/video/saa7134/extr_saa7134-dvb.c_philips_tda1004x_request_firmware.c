
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7134_dev {TYPE_2__* pci; } ;
struct firmware {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct saa7134_dev* priv; } ;


 int request_firmware (struct firmware const**,char*,int *) ;

__attribute__((used)) static int philips_tda1004x_request_firmware(struct dvb_frontend *fe,
        const struct firmware **fw, char *name)
{
 struct saa7134_dev *dev = fe->dvb->priv;
 return request_firmware(fw, name, &dev->pci->dev);
}
