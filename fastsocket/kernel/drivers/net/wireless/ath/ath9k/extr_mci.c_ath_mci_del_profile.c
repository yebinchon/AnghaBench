
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_mci_profile_info {int list; } ;
struct ath_mci_profile {int dummy; } ;
struct ath_common {int dummy; } ;


 int DEC_PROF (struct ath_mci_profile*,struct ath_mci_profile_info*) ;
 int kfree (struct ath_mci_profile_info*) ;
 int list_del (int *) ;

__attribute__((used)) static void ath_mci_del_profile(struct ath_common *common,
    struct ath_mci_profile *mci,
    struct ath_mci_profile_info *entry)
{
 if (!entry)
  return;

 DEC_PROF(mci, entry);
 list_del(&entry->list);
 kfree(entry);
}
