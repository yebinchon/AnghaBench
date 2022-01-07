
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_mci_profile {int dummy; } ;
struct ath_btcoex {struct ath_mci_profile mci; } ;
struct ath_softc {struct ath_btcoex btcoex; int sc_ah; } ;
struct ath_mci_profile_info {scalar_t__ type; scalar_t__ start; } ;
struct ath_common {int dummy; } ;


 int DEC_PROF (struct ath_mci_profile*,struct ath_mci_profile_info*) ;
 int INC_PROF (struct ath_mci_profile*,struct ath_mci_profile_info*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_mci_add_profile (struct ath_common*,struct ath_mci_profile*,struct ath_mci_profile_info*) ;
 int ath_mci_del_profile (struct ath_common*,struct ath_mci_profile*,struct ath_mci_profile_info*) ;
 struct ath_mci_profile_info* ath_mci_find_profile (struct ath_mci_profile*,struct ath_mci_profile_info*) ;
 int ath_mci_set_concur_txprio (struct ath_softc*) ;
 int memcpy (struct ath_mci_profile_info*,struct ath_mci_profile_info*,int) ;

__attribute__((used)) static u8 ath_mci_process_profile(struct ath_softc *sc,
      struct ath_mci_profile_info *info)
{
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_btcoex *btcoex = &sc->btcoex;
 struct ath_mci_profile *mci = &btcoex->mci;
 struct ath_mci_profile_info *entry = ((void*)0);

 entry = ath_mci_find_profile(mci, info);
 if (entry) {
  if (entry->type != info->type) {
   DEC_PROF(mci, entry);
   INC_PROF(mci, info);
  }
  memcpy(entry, info, 10);
 }

 if (info->start) {
  if (!entry && !ath_mci_add_profile(common, mci, info))
   return 0;
 } else
  ath_mci_del_profile(common, mci, entry);

 ath_mci_set_concur_txprio(sc);
 return 1;
}
