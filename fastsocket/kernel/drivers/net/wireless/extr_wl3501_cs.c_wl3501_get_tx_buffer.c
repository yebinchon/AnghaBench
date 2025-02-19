
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;
typedef int u16 ;
struct wl3501_card {int tx_buffer_cnt; int tx_buffer_head; } ;
struct wl3501_80211_tx_hdr {int dummy; } ;
typedef int next ;


 int wl3501_get_from_wla (struct wl3501_card*,int,int*,int) ;
 int wl3501_set_to_wla (struct wl3501_card*,int,int*,int) ;

__attribute__((used)) static u16 wl3501_get_tx_buffer(struct wl3501_card *this, u16 len)
{
 u16 next, blk_cnt = 0, zero = 0;
 u16 full_len = sizeof(struct wl3501_80211_tx_hdr) + len;
 u16 ret = 0;

 if (full_len > this->tx_buffer_cnt * 254)
  goto out;
 ret = this->tx_buffer_head;
 while (full_len) {
  if (full_len < 254)
   full_len = 0;
  else
   full_len -= 254;
  wl3501_get_from_wla(this, this->tx_buffer_head, &next,
        sizeof(next));
  if (!full_len)
   wl3501_set_to_wla(this, this->tx_buffer_head, &zero,
       sizeof(zero));
  this->tx_buffer_head = next;
  blk_cnt++;

  if (!next && full_len) {
   this->tx_buffer_head = ret;
   ret = 0;
   goto out;
  }
 }
 this->tx_buffer_cnt -= blk_cnt;
out:
 return ret;
}
