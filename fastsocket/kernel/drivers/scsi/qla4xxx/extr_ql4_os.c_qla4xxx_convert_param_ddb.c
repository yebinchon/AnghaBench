
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ql4_tuple_ddb {int * isid; void* port; int ip_addr; int * iscsi_name; int tpgt; } ;
struct dev_db_entry {int * isid; int port; int ip_addr; int options; int * iscsi_name; int tgt_portal_grp; } ;


 int DDB_OPT_IPV6_DEVICE ;
 void* le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int min (int,int) ;
 int sprintf (int ,char*,int ) ;

__attribute__((used)) static void qla4xxx_convert_param_ddb(struct dev_db_entry *fw_ddb_entry,
          struct ql4_tuple_ddb *tddb,
          uint8_t *flash_isid)
{
 uint16_t options = 0;

 tddb->tpgt = le32_to_cpu(fw_ddb_entry->tgt_portal_grp);
 memcpy(&tddb->iscsi_name[0], &fw_ddb_entry->iscsi_name[0],
        min(sizeof(tddb->iscsi_name), sizeof(fw_ddb_entry->iscsi_name)));

 options = le16_to_cpu(fw_ddb_entry->options);
 if (options & DDB_OPT_IPV6_DEVICE)
  sprintf(tddb->ip_addr, "%pI6", fw_ddb_entry->ip_addr);
 else
  sprintf(tddb->ip_addr, "%pI4", fw_ddb_entry->ip_addr);

 tddb->port = le16_to_cpu(fw_ddb_entry->port);

 if (flash_isid == ((void*)0))
  memcpy(&tddb->isid[0], &fw_ddb_entry->isid[0],
         sizeof(tddb->isid));
 else
  memcpy(&tddb->isid[0], &flash_isid[0], sizeof(tddb->isid));
}
