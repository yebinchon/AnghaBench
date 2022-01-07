
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int status; int mutex; } ;


 int D_SCAN (char*,...) ;
 int S_SCANNING ;
 int S_SCAN_ABORTING ;
 int il_force_scan_end (struct il_priv*) ;
 int il_send_scan_abort (struct il_priv*) ;
 int lockdep_assert_held (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
il_do_scan_abort(struct il_priv *il)
{
 int ret;

 lockdep_assert_held(&il->mutex);

 if (!test_bit(S_SCANNING, &il->status)) {
  D_SCAN("Not performing scan to abort\n");
  return;
 }

 if (test_and_set_bit(S_SCAN_ABORTING, &il->status)) {
  D_SCAN("Scan abort in progress\n");
  return;
 }

 ret = il_send_scan_abort(il);
 if (ret) {
  D_SCAN("Send scan abort failed %d\n", ret);
  il_force_scan_end(il);
 } else
  D_SCAN("Successfully send scan abort\n");
}
