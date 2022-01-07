
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int kernel_thread_starter; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_RECOVERY_THREAD ;
 int lcs_set_thread_start_bit (struct lcs_card*,int ) ;
 int schedule_work (int *) ;
 int trace ;

__attribute__((used)) static void
lcs_schedule_recovery(struct lcs_card *card)
{
 LCS_DBF_TEXT(2, trace, "startrec");
 if (!lcs_set_thread_start_bit(card, LCS_RECOVERY_THREAD))
  schedule_work(&card->kernel_thread_starter);
}
