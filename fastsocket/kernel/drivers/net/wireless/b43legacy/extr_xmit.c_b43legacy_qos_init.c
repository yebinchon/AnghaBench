
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;


 int B43legacy_HF_EDCF ;
 int b43legacy_hf_read (struct b43legacy_wldev*) ;
 int b43legacy_hf_write (struct b43legacy_wldev*,int) ;
 int b43legacy_read16 (struct b43legacy_wldev*,int) ;
 int b43legacy_write16 (struct b43legacy_wldev*,int,int) ;

void b43legacy_qos_init(struct b43legacy_wldev *dev)
{


return;

 b43legacy_hf_write(dev, b43legacy_hf_read(dev) | B43legacy_HF_EDCF);

 b43legacy_write16(dev, 0x688,
     b43legacy_read16(dev, 0x688) | 0x4);



}
