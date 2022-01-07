
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct csr1212_csr {int bus_info_len; int crc_len; TYPE_2__* cache_head; int * bus_info_data; int private; TYPE_1__* ops; } ;
struct csr1212_cache_region {int offset_end; scalar_t__ offset_start; int * prev; int * next; } ;
struct csr1212_bus_info_block_img {int crc; int crc_length; int data; } ;
struct TYPE_4__ {struct csr1212_cache_region* filled_tail; struct csr1212_cache_region* filled_head; int * data; } ;
struct TYPE_3__ {int (* bus_read ) (struct csr1212_csr*,scalar_t__,int *,int ) ;} ;


 scalar_t__ CSR1212_CONFIG_ROM_SPACE_BASE ;
 struct csr1212_cache_region* CSR1212_MALLOC (int) ;
 int CSR1212_SUCCESS ;
 int EINVAL ;
 int ENOMEM ;
 int be32_to_cpu (int ) ;
 size_t bytes_to_quads (int) ;
 int csr1212_check_crc (int ,int ,int ,int *) ;
 int quads_to_bytes (int ) ;
 int stub1 (struct csr1212_csr*,scalar_t__,int *,int ) ;
 int stub2 (struct csr1212_csr*,scalar_t__,int *,int ) ;

__attribute__((used)) static int csr1212_parse_bus_info_block(struct csr1212_csr *csr)
{
 struct csr1212_bus_info_block_img *bi;
 struct csr1212_cache_region *cr;
 int i;
 int ret;

 for (i = 0; i < csr->bus_info_len; i += sizeof(u32)) {
  ret = csr->ops->bus_read(csr, CSR1212_CONFIG_ROM_SPACE_BASE + i,
    &csr->cache_head->data[bytes_to_quads(i)],
    csr->private);
  if (ret != CSR1212_SUCCESS)
   return ret;


  if (i == 0 &&
      be32_to_cpu(csr->cache_head->data[0]) >> 24 !=
      bytes_to_quads(csr->bus_info_len) - 1)
   return -EINVAL;
 }

 bi = (struct csr1212_bus_info_block_img*)csr->cache_head->data;
 csr->crc_len = quads_to_bytes(bi->crc_length);




 for (i = csr->bus_info_len; i <= csr->crc_len; i += sizeof(u32)) {
  ret = csr->ops->bus_read(csr, CSR1212_CONFIG_ROM_SPACE_BASE + i,
    &csr->cache_head->data[bytes_to_quads(i)],
    csr->private);
  if (ret != CSR1212_SUCCESS)
   return ret;
 }

 csr1212_check_crc(bi->data, bi->crc_length, bi->crc,
     &csr->bus_info_data[3]);

 cr = CSR1212_MALLOC(sizeof(*cr));
 if (!cr)
  return -ENOMEM;

 cr->next = ((void*)0);
 cr->prev = ((void*)0);
 cr->offset_start = 0;
 cr->offset_end = csr->crc_len + 4;

 csr->cache_head->filled_head = cr;
 csr->cache_head->filled_tail = cr;

 return CSR1212_SUCCESS;
}
