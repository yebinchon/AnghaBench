
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int read; int write; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int lcs_start_channel (int *) ;
 int lcs_stop_channel (int *) ;
 int trace ;

__attribute__((used)) static int
lcs_start_channels(struct lcs_card *card)
{
 int rc;

 LCS_DBF_TEXT(2, trace, "chstart");

 rc = lcs_start_channel(&card->read);
 if (rc)
  return rc;

 rc = lcs_start_channel(&card->write);
 if (rc)
  lcs_stop_channel(&card->read);
 return rc;
}
