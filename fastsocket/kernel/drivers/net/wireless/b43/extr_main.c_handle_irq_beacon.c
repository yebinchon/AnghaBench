
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_wldev {int irq_mask; struct b43_wl* wl; } ;
struct b43_wl {int beacon_templates_virgin; } ;


 int B43_IRQ_BEACON ;
 int B43_MACCMD_BEACON0_VALID ;
 int B43_MACCMD_BEACON1_VALID ;
 int B43_MMIO_GEN_IRQ_REASON ;
 int B43_MMIO_MACCMD ;
 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_MESH_POINT ;
 int b43_is_mode (struct b43_wl*,int ) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_upload_beacon0 (struct b43_wldev*) ;
 int b43_upload_beacon1 (struct b43_wldev*) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void handle_irq_beacon(struct b43_wldev *dev)
{
 struct b43_wl *wl = dev->wl;
 u32 cmd, beacon0_valid, beacon1_valid;

 if (!b43_is_mode(wl, NL80211_IFTYPE_AP) &&
     !b43_is_mode(wl, NL80211_IFTYPE_MESH_POINT) &&
     !b43_is_mode(wl, NL80211_IFTYPE_ADHOC))
  return;




 dev->irq_mask &= ~B43_IRQ_BEACON;

 cmd = b43_read32(dev, B43_MMIO_MACCMD);
 beacon0_valid = (cmd & B43_MACCMD_BEACON0_VALID);
 beacon1_valid = (cmd & B43_MACCMD_BEACON1_VALID);


 if (beacon0_valid && beacon1_valid) {
  b43_write32(dev, B43_MMIO_GEN_IRQ_REASON, B43_IRQ_BEACON);
  dev->irq_mask |= B43_IRQ_BEACON;
  return;
 }

 if (unlikely(wl->beacon_templates_virgin)) {


  wl->beacon_templates_virgin = 0;
  b43_upload_beacon0(dev);
  b43_upload_beacon1(dev);
  cmd = b43_read32(dev, B43_MMIO_MACCMD);
  cmd |= B43_MACCMD_BEACON0_VALID;
  b43_write32(dev, B43_MMIO_MACCMD, cmd);
 } else {
  if (!beacon0_valid) {
   b43_upload_beacon0(dev);
   cmd = b43_read32(dev, B43_MMIO_MACCMD);
   cmd |= B43_MACCMD_BEACON0_VALID;
   b43_write32(dev, B43_MMIO_MACCMD, cmd);
  } else if (!beacon1_valid) {
   b43_upload_beacon1(dev);
   cmd = b43_read32(dev, B43_MMIO_MACCMD);
   cmd |= B43_MACCMD_BEACON1_VALID;
   b43_write32(dev, B43_MMIO_MACCMD, cmd);
  }
 }
}
