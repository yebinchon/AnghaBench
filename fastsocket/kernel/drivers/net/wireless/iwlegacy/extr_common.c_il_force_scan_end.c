
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int status; int mutex; } ;


 int D_SCAN (char*) ;
 int S_SCANNING ;
 int S_SCAN_ABORTING ;
 int S_SCAN_HW ;
 int clear_bit (int ,int *) ;
 int il_complete_scan (struct il_priv*,int) ;
 int lockdep_assert_held (int *) ;
 int test_bit (int ,int *) ;

void
il_force_scan_end(struct il_priv *il)
{
 lockdep_assert_held(&il->mutex);

 if (!test_bit(S_SCANNING, &il->status)) {
  D_SCAN("Forcing scan end while not scanning\n");
  return;
 }

 D_SCAN("Forcing scan end\n");
 clear_bit(S_SCANNING, &il->status);
 clear_bit(S_SCAN_HW, &il->status);
 clear_bit(S_SCAN_ABORTING, &il->status);
 il_complete_scan(il, 1);
}
