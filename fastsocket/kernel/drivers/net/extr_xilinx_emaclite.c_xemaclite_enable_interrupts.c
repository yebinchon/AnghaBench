
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_local {scalar_t__ tx_ping_pong; scalar_t__ rx_ping_pong; scalar_t__ base_addr; } ;


 scalar_t__ XEL_BUFFER_OFFSET ;
 int XEL_GIER_GIE_MASK ;
 scalar_t__ XEL_GIER_OFFSET ;
 scalar_t__ XEL_RSR_OFFSET ;
 int XEL_RSR_RECV_IE_MASK ;
 scalar_t__ XEL_TSR_OFFSET ;
 int XEL_TSR_XMIT_IE_MASK ;
 int in_be32 (scalar_t__) ;
 int out_be32 (scalar_t__,int) ;

__attribute__((used)) static void xemaclite_enable_interrupts(struct net_local *drvdata)
{
 u32 reg_data;


 reg_data = in_be32(drvdata->base_addr + XEL_TSR_OFFSET);
 out_be32(drvdata->base_addr + XEL_TSR_OFFSET,
   reg_data | XEL_TSR_XMIT_IE_MASK);



 if (drvdata->tx_ping_pong != 0) {
  reg_data = in_be32(drvdata->base_addr +
       XEL_BUFFER_OFFSET + XEL_TSR_OFFSET);
  out_be32(drvdata->base_addr + XEL_BUFFER_OFFSET +
    XEL_TSR_OFFSET,
    reg_data | XEL_TSR_XMIT_IE_MASK);
 }


 out_be32(drvdata->base_addr + XEL_RSR_OFFSET,
   XEL_RSR_RECV_IE_MASK);



 if (drvdata->rx_ping_pong != 0) {
  out_be32(drvdata->base_addr + XEL_BUFFER_OFFSET +
    XEL_RSR_OFFSET,
    XEL_RSR_RECV_IE_MASK);
 }


 out_be32(drvdata->base_addr + XEL_GIER_OFFSET, XEL_GIER_GIE_MASK);
}
