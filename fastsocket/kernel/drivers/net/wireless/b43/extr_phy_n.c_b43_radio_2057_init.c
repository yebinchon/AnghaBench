
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_radio_2057_init_post (struct b43_wldev*) ;
 int b43_radio_2057_init_pre (struct b43_wldev*) ;
 int r2057_upload_inittabs (struct b43_wldev*) ;

__attribute__((used)) static void b43_radio_2057_init(struct b43_wldev *dev)
{
 b43_radio_2057_init_pre(dev);
 r2057_upload_inittabs(dev);
 b43_radio_2057_init_post(dev);
}
