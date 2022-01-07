
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carm_msg_allocbuf {int n_sg; TYPE_1__* sg; void* n_msg; void* msg_pool; void* n_rbuf; void* rbuf_pool; void* n_evt; void* evt_pool; void* len; void* addr; int sg_type; void* handle; int subtype; int type; } ;
struct carm_host {int shm_dma; } ;
struct TYPE_2__ {void* len; void* start; } ;


 int CARM_MSG_MISC ;
 int CARM_Q_LEN ;
 int MISC_ALLOC_MEM ;
 int PDC_SHM_SIZE ;
 int RBUF_LEN ;
 int RMSG_Q_LEN ;
 int SGT_32BIT ;
 int TAG_ENCODE (unsigned int) ;
 void* cpu_to_le32 (int) ;
 int memset (struct carm_msg_allocbuf*,int ,int) ;

__attribute__((used)) static unsigned int carm_fill_alloc_buf(struct carm_host *host,
     unsigned int idx, void *mem)
{
 struct carm_msg_allocbuf *ab = mem;

 memset(ab, 0, sizeof(*ab));
 ab->type = CARM_MSG_MISC;
 ab->subtype = MISC_ALLOC_MEM;
 ab->handle = cpu_to_le32(TAG_ENCODE(idx));
 ab->n_sg = 1;
 ab->sg_type = SGT_32BIT;
 ab->addr = cpu_to_le32(host->shm_dma + (PDC_SHM_SIZE >> 1));
 ab->len = cpu_to_le32(PDC_SHM_SIZE >> 1);
 ab->evt_pool = cpu_to_le32(host->shm_dma + (16 * 1024));
 ab->n_evt = cpu_to_le32(1024);
 ab->rbuf_pool = cpu_to_le32(host->shm_dma);
 ab->n_rbuf = cpu_to_le32(RMSG_Q_LEN);
 ab->msg_pool = cpu_to_le32(host->shm_dma + RBUF_LEN);
 ab->n_msg = cpu_to_le32(CARM_Q_LEN);
 ab->sg[0].start = cpu_to_le32(host->shm_dma + (PDC_SHM_SIZE >> 1));
 ab->sg[0].len = cpu_to_le32(65536);

 return sizeof(struct carm_msg_allocbuf);
}
