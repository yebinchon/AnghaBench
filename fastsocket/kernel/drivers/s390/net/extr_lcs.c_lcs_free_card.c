
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int dummy; } ;


 int LCS_DBF_HEX (int,int ,struct lcs_card**,int) ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int kfree (struct lcs_card*) ;
 int setup ;

__attribute__((used)) static void
lcs_free_card(struct lcs_card *card)
{
 LCS_DBF_TEXT(2, setup, "remcard");
 LCS_DBF_HEX(2, setup, &card, sizeof(void*));
 kfree(card);
}
