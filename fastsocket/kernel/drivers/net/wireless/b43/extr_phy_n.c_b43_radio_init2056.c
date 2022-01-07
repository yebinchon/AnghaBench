
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* n; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int init_por; } ;


 int b2056_upload_inittabs (struct b43_wldev*,int ,int ) ;
 int b43_radio_init2056_post (struct b43_wldev*) ;
 int b43_radio_init2056_pre (struct b43_wldev*) ;

__attribute__((used)) static void b43_radio_init2056(struct b43_wldev *dev)
{
 b43_radio_init2056_pre(dev);
 b2056_upload_inittabs(dev, 0, 0);
 b43_radio_init2056_post(dev);

 dev->phy.n->init_por = 0;
}
