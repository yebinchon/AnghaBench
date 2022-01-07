
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int last_rx_silence; int last_rx_signal; int last_rx_updated; int addr; int ap; } ;
struct sockaddr {int sa_data; int sa_family; } ;
struct list_head {struct list_head* next; } ;
struct iw_quality {int qual; int updated; void* noise; void* level; } ;
struct ap_data {int sta_table_lock; struct list_head sta_list; } ;
struct TYPE_3__ {struct ap_data* ap; } ;
typedef TYPE_1__ local_info_t ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 void* HFA384X_LEVEL_TO_dBm (int) ;
 int IW_QUAL_DBM ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int prism2_ap_get_sta_qual(local_info_t *local, struct sockaddr addr[],
      struct iw_quality qual[], int buf_size,
      int aplist)
{
 struct ap_data *ap = local->ap;
 struct list_head *ptr;
 int count = 0;

 spin_lock_bh(&ap->sta_table_lock);

 for (ptr = ap->sta_list.next; ptr != ((void*)0) && ptr != &ap->sta_list;
      ptr = ptr->next) {
  struct sta_info *sta = (struct sta_info *) ptr;

  if (aplist && !sta->ap)
   continue;
  addr[count].sa_family = ARPHRD_ETHER;
  memcpy(addr[count].sa_data, sta->addr, ETH_ALEN);
  if (sta->last_rx_silence == 0)
   qual[count].qual = sta->last_rx_signal < 27 ?
    0 : (sta->last_rx_signal - 27) * 92 / 127;
  else
   qual[count].qual = sta->last_rx_signal -
    sta->last_rx_silence - 35;
  qual[count].level = HFA384X_LEVEL_TO_dBm(sta->last_rx_signal);
  qual[count].noise = HFA384X_LEVEL_TO_dBm(sta->last_rx_silence);
  qual[count].updated = sta->last_rx_updated;

  sta->last_rx_updated = IW_QUAL_DBM;

  count++;
  if (count >= buf_size)
   break;
 }
 spin_unlock_bh(&ap->sta_table_lock);

 return count;
}
