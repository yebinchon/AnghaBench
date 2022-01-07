
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct iscsi_conn {int dummy; } ;


 int CXGBI_DBG_PDU_RX ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;




 int KERN_ERR ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*) ;
 int iscsi_tcp_recv_skb (struct iscsi_conn*,struct sk_buff*,unsigned int,int,int*) ;
 int log_debug (int,char*,struct sk_buff*,unsigned int,int,int) ;
 int pr_info (char*,struct sk_buff*,unsigned int,int,...) ;

__attribute__((used)) static inline int read_pdu_skb(struct iscsi_conn *conn,
          struct sk_buff *skb,
          unsigned int offset,
          int offloaded)
{
 int status = 0;
 int bytes_read;

 bytes_read = iscsi_tcp_recv_skb(conn, skb, offset, offloaded, &status);
 switch (status) {
 case 131:
  pr_info("skb 0x%p, off %u, %d, TCP_ERR.\n",
     skb, offset, offloaded);
  return -EIO;
 case 128:
  log_debug(1 << CXGBI_DBG_PDU_RX,
   "skb 0x%p, off %u, %d, TCP_SUSPEND, rc %d.\n",
   skb, offset, offloaded, bytes_read);

  return bytes_read;
 case 129:
  pr_info("skb 0x%p, off %u, %d, TCP_SKB_DONE.\n",
   skb, offset, offloaded);




  iscsi_conn_printk(KERN_ERR, conn, "Invalid pdu or skb.");
  return -EFAULT;
 case 130:
  log_debug(1 << CXGBI_DBG_PDU_RX,
   "skb 0x%p, off %u, %d, TCP_SEG_DONE, rc %d.\n",
   skb, offset, offloaded, bytes_read);
  return bytes_read;
 default:
  pr_info("skb 0x%p, off %u, %d, invalid status %d.\n",
   skb, offset, offloaded, status);
  return -EINVAL;
 }
}
