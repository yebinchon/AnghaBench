
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_mc_hash {int dummy; } ;
struct zd_mac {int chip; } ;


 int zd_chip_set_multicast_hash (int *,struct zd_mc_hash*) ;
 int zd_mc_clear (struct zd_mc_hash*) ;

__attribute__((used)) static int set_mc_hash(struct zd_mac *mac)
{
 struct zd_mc_hash hash;
 zd_mc_clear(&hash);
 return zd_chip_set_multicast_hash(&mac->chip, &hash);
}
