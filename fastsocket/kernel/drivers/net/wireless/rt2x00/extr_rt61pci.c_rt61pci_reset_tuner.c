
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
struct link_qual {int dummy; } ;


 int rt61pci_set_vgc (struct rt2x00_dev*,struct link_qual*,int) ;

__attribute__((used)) static void rt61pci_reset_tuner(struct rt2x00_dev *rt2x00dev,
    struct link_qual *qual)
{
 rt61pci_set_vgc(rt2x00dev, qual, 0x20);
}
