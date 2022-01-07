
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sg_io_hdr {scalar_t__ iovec_count; } ;
struct nvme_trans_io_cdb {int xfer_len; } ;



__attribute__((used)) static inline u32 nvme_trans_io_get_num_cmds(struct sg_io_hdr *hdr,
     struct nvme_trans_io_cdb *cdb_info,
     u32 max_blocks)
{

 if (hdr->iovec_count > 0)
  return hdr->iovec_count;
 else if (cdb_info->xfer_len > max_blocks)
  return ((cdb_info->xfer_len - 1) / max_blocks) + 1;
 else
  return 1;
}
