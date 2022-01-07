
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvme_trans_io_cdb {int lba; scalar_t__ xfer_len; scalar_t__ prot_info; scalar_t__ fua; } ;


 int GET_U32_FROM_CDB (int *,int ) ;
 scalar_t__ GET_U8_FROM_CDB (int *,int ) ;
 int IO_6_CDB_LBA_MASK ;
 int IO_6_CDB_LBA_OFFSET ;
 int IO_6_CDB_TX_LEN_OFFSET ;
 scalar_t__ IO_6_DEFAULT_TX_LEN ;

__attribute__((used)) static inline void nvme_trans_get_io_cdb6(u8 *cmd,
     struct nvme_trans_io_cdb *cdb_info)
{
 cdb_info->fua = 0;
 cdb_info->prot_info = 0;
 cdb_info->lba = GET_U32_FROM_CDB(cmd, IO_6_CDB_LBA_OFFSET) &
     IO_6_CDB_LBA_MASK;
 cdb_info->xfer_len = GET_U8_FROM_CDB(cmd, IO_6_CDB_TX_LEN_OFFSET);


 if (cdb_info->xfer_len == 0)
  cdb_info->xfer_len = IO_6_DEFAULT_TX_LEN;
}
