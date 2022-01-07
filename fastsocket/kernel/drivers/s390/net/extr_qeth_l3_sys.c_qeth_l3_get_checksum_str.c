
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ checksum_type; } ;
struct qeth_card {TYPE_1__ options; } ;


 scalar_t__ HW_CHECKSUMMING ;
 scalar_t__ SW_CHECKSUMMING ;

__attribute__((used)) static const char *qeth_l3_get_checksum_str(struct qeth_card *card)
{
 if (card->options.checksum_type == SW_CHECKSUMMING)
  return "sw";
 else if (card->options.checksum_type == HW_CHECKSUMMING)
  return "hw";
 else
  return "no";
}
