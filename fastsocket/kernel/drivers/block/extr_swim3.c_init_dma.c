
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbdma_cmd {scalar_t__ xfer_status; int phy_addr; int command; int req_count; } ;


 int st_le16 (int *,int) ;
 int st_le32 (int *,int ) ;
 int virt_to_bus (void*) ;

__attribute__((used)) static inline void init_dma(struct dbdma_cmd *cp, int cmd,
       void *buf, int count)
{
 st_le16(&cp->req_count, count);
 st_le16(&cp->command, cmd);
 st_le32(&cp->phy_addr, virt_to_bus(buf));
 cp->xfer_status = 0;
}
