
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int issuer_rm_w; int cm_filter_w; int cm_connection_w; int ulp_filter_w; int ulp_connection_w; } ;
struct qeth_card {TYPE_1__ token; } ;



__attribute__((used)) static void qeth_init_tokens(struct qeth_card *card)
{
 card->token.issuer_rm_w = 0x00010103UL;
 card->token.cm_filter_w = 0x00010108UL;
 card->token.cm_connection_w = 0x0001010aUL;
 card->token.ulp_filter_w = 0x0001010bUL;
 card->token.ulp_connection_w = 0x0001010dUL;
}
