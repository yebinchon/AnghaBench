
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* wr_hi; } ;
struct ulp_mem_io {void* len; void* cmd_lock_addr; TYPE_1__ wr; } ;
struct sk_buff {scalar_t__ head; } ;


 int FW_WROPCODE_BYPASS ;
 int PPOD_SIZE ;
 int ULP_MEM_WRITE ;
 int V_ULPTX_CMD (int ) ;
 int V_ULPTX_NFLITS (int) ;
 int V_ULP_MEMIO_ADDR (unsigned int) ;
 int V_ULP_MEMIO_DATA_LEN (int) ;
 int V_WR_OP (int ) ;
 void* htonl (int) ;
 int memset (struct ulp_mem_io*,int ,int) ;

__attribute__((used)) static inline void ulp_mem_io_set_hdr(struct sk_buff *skb, unsigned int addr)
{
 struct ulp_mem_io *req = (struct ulp_mem_io *)skb->head;

 memset(req, 0, sizeof(*req));

 req->wr.wr_hi = htonl(V_WR_OP(FW_WROPCODE_BYPASS));
 req->cmd_lock_addr = htonl(V_ULP_MEMIO_ADDR(addr >> 5) |
       V_ULPTX_CMD(ULP_MEM_WRITE));
 req->len = htonl(V_ULP_MEMIO_DATA_LEN(PPOD_SIZE >> 5) |
    V_ULPTX_NFLITS((PPOD_SIZE >> 3) + 1));
}
