
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int index; int flags; } ;
struct ibft_tgt {int port; int nic_assoc; int chap_type; int rev_chap_secret_off; int rev_chap_secret_len; int rev_chap_name_off; int rev_chap_name_len; int chap_secret_off; int chap_secret_len; int chap_name_off; int chap_name_len; int tgt_name_off; int tgt_name_len; int * lun; int ip_addr; TYPE_1__ hdr; } ;
struct ibft_kobject {void* header; struct ibft_tgt* tgt; } ;
typedef int ssize_t ;
 int sprintf (char*,char*,...) ;
 int sprintf_ipaddr (char*,int ) ;
 int sprintf_string (char*,int ,char*) ;

__attribute__((used)) static ssize_t ibft_attr_show_target(void *data, int type, char *buf)
{
 struct ibft_kobject *entry = data;
 struct ibft_tgt *tgt = entry->tgt;
 void *ibft_loc = entry->header;
 char *str = buf;
 int i;

 if (!tgt)
  return 0;

 switch (type) {
 case 135:
  str += sprintf(str, "%d\n", tgt->hdr.index);
  break;
 case 136:
  str += sprintf(str, "%d\n", tgt->hdr.flags);
  break;
 case 134:
  str += sprintf_ipaddr(str, tgt->ip_addr);
  break;
 case 130:
  str += sprintf(str, "%d\n", tgt->port);
  break;
 case 133:
  for (i = 0; i < 8; i++)
   str += sprintf(str, "%x", (u8)tgt->lun[i]);
  str += sprintf(str, "\n");
  break;
 case 131:
  str += sprintf(str, "%d\n", tgt->nic_assoc);
  break;
 case 137:
  str += sprintf(str, "%d\n", tgt->chap_type);
  break;
 case 132:
  str += sprintf_string(str, tgt->tgt_name_len,
          (char *)ibft_loc + tgt->tgt_name_off);
  break;
 case 139:
  str += sprintf_string(str, tgt->chap_name_len,
          (char *)ibft_loc + tgt->chap_name_off);
  break;
 case 138:
  str += sprintf_string(str, tgt->chap_secret_len,
          (char *)ibft_loc + tgt->chap_secret_off);
  break;
 case 129:
  str += sprintf_string(str, tgt->rev_chap_name_len,
          (char *)ibft_loc +
          tgt->rev_chap_name_off);
  break;
 case 128:
  str += sprintf_string(str, tgt->rev_chap_secret_len,
          (char *)ibft_loc +
          tgt->rev_chap_secret_off);
  break;
 default:
  break;
 }

 return str - buf;
}
