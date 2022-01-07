
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct net_device {int dummy; } ;
struct iw_quality {int level; int noise; int qual; int updated; } ;


 int IW_QUAL_ALL_UPDATED ;
 int IW_QUAL_DBM ;
 int wireless_spy_update (struct net_device*,int *,struct iw_quality*) ;

__attribute__((used)) static inline void orinoco_spy_gather(struct net_device *dev, u_char *mac,
          int level, int noise)
{
 struct iw_quality wstats;
 wstats.level = level - 0x95;
 wstats.noise = noise - 0x95;
 wstats.qual = (level > noise) ? (level - noise) : 0;
 wstats.updated = IW_QUAL_ALL_UPDATED | IW_QUAL_DBM;

 wireless_spy_update(dev, mac, &wstats);
}
