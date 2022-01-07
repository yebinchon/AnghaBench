
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_bay_info {int dummy; } ;


 int MB_BIS (struct media_bay_info*,int ,int ) ;
 int OHARE_FCR ;
 int OH_BAY_RESET_N ;

__attribute__((used)) static void
ohare_mb_un_reset(struct media_bay_info* bay)
{
 MB_BIS(bay, OHARE_FCR, OH_BAY_RESET_N);
}
