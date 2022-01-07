
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo_2_2_2 {int lpar_number; int name; } ;
struct lgr_info {int lpar_number; int name; } ;


 int ENOSYS ;
 int cpascii (int ,int ,int) ;
 scalar_t__ lgr_page ;
 int memcpy (int *,int *,int) ;
 int stsi (struct sysinfo_2_2_2*,int,int,int) ;

__attribute__((used)) static void lgr_stsi_2_2_2(struct lgr_info *lgr_info)
{
 struct sysinfo_2_2_2 *si = (void *) lgr_page;

 if (stsi(si, 2, 2, 2) == -ENOSYS)
  return;
 cpascii(lgr_info->name, si->name, sizeof(si->name));
 memcpy(&lgr_info->lpar_number, &si->lpar_number,
        sizeof(lgr_info->lpar_number));
}
