
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* type; } ;
struct TYPE_4__ {void* type; } ;
struct TYPE_6__ {int cq; int isolation; int rx_sg_cb; scalar_t__ performance_stats; int add_hhlen; scalar_t__ fake_broadcast; int macaddr_mode; int broadcast_mode; int checksum_type; TYPE_2__ route6; TYPE_1__ route4; } ;
struct qeth_card {TYPE_3__ options; } ;


 int DEFAULT_ADD_HHLEN ;
 int ISOLATION_MODE_NONE ;
 void* NO_ROUTER ;
 int QETH_CHECKSUM_DEFAULT ;
 int QETH_CQ_DISABLED ;
 int QETH_RX_SG_CB ;
 int QETH_TR_BROADCAST_ALLRINGS ;
 int QETH_TR_MACADDR_NONCANONICAL ;

__attribute__((used)) static void qeth_set_intial_options(struct qeth_card *card)
{
 card->options.route4.type = NO_ROUTER;
 card->options.route6.type = NO_ROUTER;
 card->options.checksum_type = QETH_CHECKSUM_DEFAULT;
 card->options.broadcast_mode = QETH_TR_BROADCAST_ALLRINGS;
 card->options.macaddr_mode = QETH_TR_MACADDR_NONCANONICAL;
 card->options.fake_broadcast = 0;
 card->options.add_hhlen = DEFAULT_ADD_HHLEN;
 card->options.performance_stats = 0;
 card->options.rx_sg_cb = QETH_RX_SG_CB;
 card->options.isolation = ISOLATION_MODE_NONE;
 card->options.cq = QETH_CQ_DISABLED;
}
