
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_bay_info {int dummy; } ;


 int HEATHROW_FCR ;
 int HRW_IDE1_RESET_N ;
 int MB_BIS (struct media_bay_info*,int ,int ) ;

__attribute__((used)) static void heathrow_mb_un_reset_ide(struct media_bay_info* bay)
{
 MB_BIS(bay, HEATHROW_FCR, HRW_IDE1_RESET_N);
}
