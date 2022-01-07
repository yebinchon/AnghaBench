
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sensor {int dummy; } ;
struct smu_ad_sensor {int dummy; } ;


 int kfree (struct smu_ad_sensor*) ;
 struct smu_ad_sensor* to_smu_ads (struct wf_sensor*) ;

__attribute__((used)) static void smu_ads_release(struct wf_sensor *sr)
{
 struct smu_ad_sensor *ads = to_smu_ads(sr);

 kfree(ads);
}
