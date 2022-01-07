
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_HF_2060W ;
 int b43_hf_read (struct b43_wldev*) ;
 int b43_hf_write (struct b43_wldev*,int) ;

__attribute__((used)) static void b43_wa_2060txlna_gain(struct b43_wldev *dev)
{
 b43_hf_write(dev, b43_hf_read(dev) |
    B43_HF_2060W);
}
