
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct TYPE_4__ {TYPE_1__ route6; } ;
struct qeth_card {TYPE_2__ options; } ;


 int IPA_IPV6 ;
 int NO_ROUTER ;
 int QETH_CARD_IFNAME (struct qeth_card*) ;
 int QETH_DBF_MESSAGE (int,char*,int,int ) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_PROT_IPV6 ;
 int TRACE ;
 int qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_l3_correct_routing_type (struct qeth_card*,int *,int ) ;
 int qeth_l3_send_setrouting (struct qeth_card*,int ,int ) ;

int qeth_l3_setrouting_v6(struct qeth_card *card)
{
 int rc = 0;

 QETH_DBF_TEXT(TRACE, 3, "setrtg6");
 return rc;
}
