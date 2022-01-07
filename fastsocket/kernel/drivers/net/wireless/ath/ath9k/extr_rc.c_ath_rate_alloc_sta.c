
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int dummy; } ;
struct ath_rate_priv {int dummy; } ;
typedef int gfp_t ;


 void* kzalloc (int,int ) ;

__attribute__((used)) static void *ath_rate_alloc_sta(void *priv, struct ieee80211_sta *sta, gfp_t gfp)
{
 return kzalloc(sizeof(struct ath_rate_priv), gfp);
}
