
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tx_desc {int dummy; } ;
struct TYPE_2__ {int size; int * desc; int phys_addr; } ;
struct sge_ctrl_txq {scalar_t__ full; int qresume_tsk; int sendq; struct adapter* adap; TYPE_1__ q; } ;
struct port_info {int tx_chan; } ;
struct net_device {int dummy; } ;
struct fw_eq_ctrl_cmd {void* cmpliqid_eqid; int eqaddr; void* dcaen_to_eqsize; void* fetchszm_to_iqid; void* physeqid_pkd; void* alloc_to_len16; void* op_to_vfn; } ;
struct adapter {int pdev_dev; int fn; } ;
typedef int c ;


 int ENOMEM ;
 int FW_CMD_EXEC ;
 int FW_CMD_OP (int ) ;
 int FW_CMD_REQUEST ;
 int FW_CMD_WRITE ;
 int FW_EQ_CTRL_CMD ;
 int FW_EQ_CTRL_CMD_ALLOC ;
 int FW_EQ_CTRL_CMD_CIDXFTHRESH (int) ;
 int FW_EQ_CTRL_CMD_CMPLIQID (unsigned int) ;
 int FW_EQ_CTRL_CMD_EQID_GET (int ) ;
 int FW_EQ_CTRL_CMD_EQSIZE (int) ;
 int FW_EQ_CTRL_CMD_EQSTART ;
 int FW_EQ_CTRL_CMD_FBMAX (int) ;
 int FW_EQ_CTRL_CMD_FBMIN (int) ;
 int FW_EQ_CTRL_CMD_FETCHRO ;
 int FW_EQ_CTRL_CMD_HOSTFCMODE (int) ;
 int FW_EQ_CTRL_CMD_IQID (unsigned int) ;
 int FW_EQ_CTRL_CMD_PCIECHN (int ) ;
 int FW_EQ_CTRL_CMD_PFN (int ) ;
 int FW_EQ_CTRL_CMD_VFN (int ) ;
 int FW_LEN16 (struct fw_eq_ctrl_cmd) ;
 int STAT_LEN ;
 int * alloc_ring (int ,int,int,int ,int *,int *,int ) ;
 int cpu_to_be64 (int ) ;
 int dma_free_coherent (int ,int,int *,int ) ;
 void* htonl (int) ;
 int init_txq (struct adapter*,TYPE_1__*,int ) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int ntohl (void*) ;
 int restart_ctrlq ;
 int skb_queue_head_init (int *) ;
 int t4_wr_mbox (struct adapter*,int ,struct fw_eq_ctrl_cmd*,int,struct fw_eq_ctrl_cmd*) ;
 int tasklet_init (int *,int ,unsigned long) ;

int t4_sge_alloc_ctrl_txq(struct adapter *adap, struct sge_ctrl_txq *txq,
     struct net_device *dev, unsigned int iqid,
     unsigned int cmplqid)
{
 int ret, nentries;
 struct fw_eq_ctrl_cmd c;
 struct port_info *pi = netdev_priv(dev);


 nentries = txq->q.size + STAT_LEN / sizeof(struct tx_desc);

 txq->q.desc = alloc_ring(adap->pdev_dev, nentries,
     sizeof(struct tx_desc), 0, &txq->q.phys_addr,
     ((void*)0), 0);
 if (!txq->q.desc)
  return -ENOMEM;

 c.op_to_vfn = htonl(FW_CMD_OP(FW_EQ_CTRL_CMD) | FW_CMD_REQUEST |
       FW_CMD_WRITE | FW_CMD_EXEC |
       FW_EQ_CTRL_CMD_PFN(adap->fn) |
       FW_EQ_CTRL_CMD_VFN(0));
 c.alloc_to_len16 = htonl(FW_EQ_CTRL_CMD_ALLOC |
     FW_EQ_CTRL_CMD_EQSTART | FW_LEN16(c));
 c.cmpliqid_eqid = htonl(FW_EQ_CTRL_CMD_CMPLIQID(cmplqid));
 c.physeqid_pkd = htonl(0);
 c.fetchszm_to_iqid = htonl(FW_EQ_CTRL_CMD_HOSTFCMODE(2) |
       FW_EQ_CTRL_CMD_PCIECHN(pi->tx_chan) |
       FW_EQ_CTRL_CMD_FETCHRO |
       FW_EQ_CTRL_CMD_IQID(iqid));
 c.dcaen_to_eqsize = htonl(FW_EQ_CTRL_CMD_FBMIN(2) |
      FW_EQ_CTRL_CMD_FBMAX(3) |
      FW_EQ_CTRL_CMD_CIDXFTHRESH(5) |
      FW_EQ_CTRL_CMD_EQSIZE(nentries));
 c.eqaddr = cpu_to_be64(txq->q.phys_addr);

 ret = t4_wr_mbox(adap, adap->fn, &c, sizeof(c), &c);
 if (ret) {
  dma_free_coherent(adap->pdev_dev,
      nentries * sizeof(struct tx_desc),
      txq->q.desc, txq->q.phys_addr);
  txq->q.desc = ((void*)0);
  return ret;
 }

 init_txq(adap, &txq->q, FW_EQ_CTRL_CMD_EQID_GET(ntohl(c.cmpliqid_eqid)));
 txq->adap = adap;
 skb_queue_head_init(&txq->sendq);
 tasklet_init(&txq->qresume_tsk, restart_ctrlq, (unsigned long)txq);
 txq->full = 0;
 return 0;
}
