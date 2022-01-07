
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct tifm_dev {TYPE_1__ dev; } ;
struct tifm_adapter {int (* eject ) (struct tifm_adapter*,struct tifm_dev*) ;} ;


 struct tifm_adapter* dev_get_drvdata (int ) ;
 int stub1 (struct tifm_adapter*,struct tifm_dev*) ;

void tifm_eject(struct tifm_dev *sock)
{
 struct tifm_adapter *fm = dev_get_drvdata(sock->dev.parent);
 fm->eject(fm, sock);
}
