
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int write; int read; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int lcs_stop_channel (int *) ;
 int trace ;

__attribute__((used)) static int
lcs_stop_channels(struct lcs_card *card)
{
 LCS_DBF_TEXT(2, trace, "chhalt");
 lcs_stop_channel(&card->read);
 lcs_stop_channel(&card->write);
 return 0;
}
