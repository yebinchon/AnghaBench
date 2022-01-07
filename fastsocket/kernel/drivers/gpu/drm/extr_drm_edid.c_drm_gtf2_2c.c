
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct edid {int dummy; } ;


 int drm_for_each_detailed_block (int*,int ,int**) ;
 int find_gtf2 ;

__attribute__((used)) static int
drm_gtf2_2c(struct edid *edid)
{
 u8 *r = ((void*)0);
 drm_for_each_detailed_block((u8 *)edid, find_gtf2, &r);
 return r ? r[13] : 0;
}
