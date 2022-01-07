
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;
struct link_qual {int false_cca; int vgc_level; } ;


 int rt2400pci_set_vgc (struct rt2x00_dev*,struct link_qual*,int) ;

__attribute__((used)) static void rt2400pci_link_tuner(struct rt2x00_dev *rt2x00dev,
     struct link_qual *qual, const u32 count)
{




 if (count > 60 || !(count & 1))
  return;




 if ((qual->false_cca > 512) && (qual->vgc_level < 0x20))
  rt2400pci_set_vgc(rt2x00dev, qual, ++qual->vgc_level);
 else if ((qual->false_cca < 100) && (qual->vgc_level > 0x08))
  rt2400pci_set_vgc(rt2x00dev, qual, --qual->vgc_level);
}
