
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct ieee80211_rate {int hw_value; } ;
struct b43legacy_wldev {TYPE_2__* wl; } ;
struct b43legacy_plcp_hdr6 {int dummy; } ;
struct TYPE_4__ {TYPE_1__* current_beacon; } ;
struct TYPE_3__ {scalar_t__ len; } ;


 int * b43legacy_b_ratetable ;
 int * b43legacy_generate_probe_resp (struct b43legacy_wldev*,scalar_t__*,struct ieee80211_rate*) ;
 int b43legacy_write_probe_resp_plcp (struct b43legacy_wldev*,int,scalar_t__,int *) ;
 int b43legacy_write_template_common (struct b43legacy_wldev*,int const*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int kfree (int const*) ;
 scalar_t__ min (size_t,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void b43legacy_write_probe_resp_template(struct b43legacy_wldev *dev,
      u16 ram_offset,
      u16 shm_size_offset,
      struct ieee80211_rate *rate)
{
 const u8 *probe_resp_data;
 u16 size;

 size = dev->wl->current_beacon->len;
 probe_resp_data = b43legacy_generate_probe_resp(dev, &size, rate);
 if (unlikely(!probe_resp_data))
  return;




 b43legacy_write_probe_resp_plcp(dev, 0x31A, size,
     &b43legacy_b_ratetable[0]);
 b43legacy_write_probe_resp_plcp(dev, 0x32C, size,
     &b43legacy_b_ratetable[1]);
 b43legacy_write_probe_resp_plcp(dev, 0x33E, size,
     &b43legacy_b_ratetable[2]);
 b43legacy_write_probe_resp_plcp(dev, 0x350, size,
     &b43legacy_b_ratetable[3]);

 size = min((size_t)size,
     0x200 - sizeof(struct b43legacy_plcp_hdr6));
 b43legacy_write_template_common(dev, probe_resp_data,
     size, ram_offset,
     shm_size_offset, rate->hw_value);
 kfree(probe_resp_data);
}
