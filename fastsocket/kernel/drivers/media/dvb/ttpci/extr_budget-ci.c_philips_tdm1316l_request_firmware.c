
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct firmware {int dummy; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_8__ {TYPE_3__* dev; } ;
struct budget_ci {TYPE_4__ budget; } ;
struct TYPE_7__ {TYPE_2__* pci; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ priv; } ;


 int request_firmware (struct firmware const**,char*,int *) ;

__attribute__((used)) static int philips_tdm1316l_request_firmware(struct dvb_frontend *fe,
          const struct firmware **fw, char *name)
{
 struct budget_ci *budget_ci = (struct budget_ci *) fe->dvb->priv;

 return request_firmware(fw, name, &budget_ci->budget.dev->pci->dev);
}
