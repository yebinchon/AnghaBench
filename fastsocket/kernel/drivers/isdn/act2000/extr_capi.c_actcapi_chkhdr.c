
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cmd; scalar_t__ subcmd; } ;
struct TYPE_8__ {int applicationID; int len; TYPE_1__ cmd; } ;
typedef TYPE_3__ actcapi_msghdr ;
typedef int act2000_card ;
struct TYPE_7__ {scalar_t__ cmd; scalar_t__ subcmd; } ;
struct TYPE_9__ {TYPE_2__ cmd; } ;


 int num_valid_imsg ;
 TYPE_4__* valid_msg ;

int
actcapi_chkhdr(act2000_card * card, actcapi_msghdr *hdr)
{
 int i;

 if (hdr->applicationID != 1)
  return 0;
 if (hdr->len < 9)
  return 0;
 for (i = 0; i < num_valid_imsg; i++)
  if ((hdr->cmd.cmd == valid_msg[i].cmd.cmd) &&
      (hdr->cmd.subcmd == valid_msg[i].cmd.subcmd)) {
   return (i?1:2);
  }
 return 0;
}
