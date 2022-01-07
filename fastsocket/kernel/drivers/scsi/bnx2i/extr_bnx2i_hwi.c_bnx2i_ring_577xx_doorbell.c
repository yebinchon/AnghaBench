
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct bnx2i_conn {TYPE_3__* ep; } ;
struct TYPE_4__ {int header; } ;
struct bnx2i_5771x_dbell {TYPE_1__ dbell; } ;
typedef int dbell ;
struct TYPE_5__ {int ctx_base; } ;
struct TYPE_6__ {TYPE_2__ qp; } ;


 int B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT ;
 int B577XX_ISCSI_CONNECTION_TYPE ;
 int cpu_to_le32 (int ) ;
 int memset (struct bnx2i_5771x_dbell*,int ,int) ;
 int writel (int ,int ) ;

__attribute__((used)) static void bnx2i_ring_577xx_doorbell(struct bnx2i_conn *conn)
{
 struct bnx2i_5771x_dbell dbell;
 u32 msg;

 memset(&dbell, 0, sizeof(dbell));
 dbell.dbell.header = (B577XX_ISCSI_CONNECTION_TYPE <<
         B577XX_DOORBELL_HDR_CONN_TYPE_SHIFT);
 msg = *((u32 *)&dbell);

 writel(cpu_to_le32(msg), conn->ep->qp.ctx_base);
}
