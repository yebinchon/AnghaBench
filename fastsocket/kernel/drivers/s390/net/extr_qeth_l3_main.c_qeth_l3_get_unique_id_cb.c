
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct qeth_reply {int dummy; } ;
struct TYPE_6__ {int * unique_id; } ;
struct TYPE_7__ {TYPE_1__ create_destroy_addr; } ;
struct TYPE_9__ {scalar_t__ return_code; } ;
struct qeth_ipa_cmd {TYPE_2__ data; TYPE_4__ hdr; } ;
struct TYPE_10__ {int unique_id; } ;
struct qeth_card {TYPE_3__* gdev; TYPE_5__ info; } ;
typedef int __u16 ;
struct TYPE_8__ {int dev; } ;


 int UNIQUE_ID_IF_CREATE_ADDR_FAILED ;
 int UNIQUE_ID_NOT_BY_CARD ;
 int dev_warn (int *,char*) ;

__attribute__((used)) static int qeth_l3_get_unique_id_cb(struct qeth_card *card,
  struct qeth_reply *reply, unsigned long data)
{
 struct qeth_ipa_cmd *cmd;

 cmd = (struct qeth_ipa_cmd *) data;
 if (cmd->hdr.return_code == 0)
  card->info.unique_id = *((__u16 *)
    &cmd->data.create_destroy_addr.unique_id[6]);
 else {
  card->info.unique_id = UNIQUE_ID_IF_CREATE_ADDR_FAILED |
     UNIQUE_ID_NOT_BY_CARD;
  dev_warn(&card->gdev->dev, "The network adapter failed to "
   "generate a unique ID\n");
 }
 return 0;
}
