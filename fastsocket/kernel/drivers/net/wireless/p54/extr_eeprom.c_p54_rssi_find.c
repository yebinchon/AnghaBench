
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct p54_rssi_db_entry {scalar_t__ const freq; } ;
struct p54_common {TYPE_1__* rssi_db; } ;
struct TYPE_2__ {int entries; scalar_t__ offset; scalar_t__ data; } ;


 scalar_t__ abs (scalar_t__ const) ;
 struct p54_rssi_db_entry p54_rssi_default ;
 int same_band (scalar_t__ const,scalar_t__ const) ;

struct p54_rssi_db_entry *p54_rssi_find(struct p54_common *priv, const u16 freq)
{
 struct p54_rssi_db_entry *entry;
 int i, found = -1;

 if (!priv->rssi_db)
  return &p54_rssi_default;

 entry = (void *)(priv->rssi_db->data + priv->rssi_db->offset);
 for (i = 0; i < priv->rssi_db->entries; i++) {
  if (!same_band(freq, entry[i].freq))
   continue;

  if (found == -1) {
   found = i;
   continue;
  }


  if (abs(freq - entry[i].freq) <
      abs(freq - entry[found].freq)) {
   found = i;
   continue;
  } else {
   break;
  }
 }

 return found < 0 ? &p54_rssi_default : &entry[found];
}
