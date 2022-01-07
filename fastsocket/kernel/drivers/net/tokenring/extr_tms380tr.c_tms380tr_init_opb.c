
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* NodeAddr; int * ProdIDAddr; int TXBufMax; int TXBufMin; scalar_t__ Reserved; void* BufSize; void* TxListSize; void* RxListSize; scalar_t__ FunctAddr; scalar_t__ GroupAddr; int FullDuplex; int OPENOptions; } ;
struct net_local {TYPE_1__ ocpl; scalar_t__ dmabuffer; scalar_t__ ProductID; } ;
struct net_device {scalar_t__ dev_addr; } ;


 unsigned short BUFFER_SIZE ;
 int ENABLE_FULL_DUPLEX_SELECTION ;
 int HIWORD (unsigned long) ;
 int LOWORD (unsigned long) ;
 int OPEN_FULL_DUPLEX_OFF ;
 unsigned short RPL_SIZE ;
 unsigned short TPL_SIZE ;
 int TX_BUF_MAX ;
 int TX_BUF_MIN ;
 void* cpu_to_be16 (unsigned short) ;
 unsigned long htonl (scalar_t__) ;
 struct net_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void tms380tr_init_opb(struct net_device *dev)
{
 struct net_local *tp;
 unsigned long Addr;
 unsigned short RplSize = RPL_SIZE;
 unsigned short TplSize = TPL_SIZE;
 unsigned short BufferSize = BUFFER_SIZE;
 int i;

 tp = netdev_priv(dev);

 tp->ocpl.OPENOptions = 0;
 tp->ocpl.OPENOptions |= ENABLE_FULL_DUPLEX_SELECTION;
 tp->ocpl.FullDuplex = 0;
 tp->ocpl.FullDuplex |= OPEN_FULL_DUPLEX_OFF;
        for (i=0;i<6;i++)
                tp->ocpl.NodeAddr[i] = ((unsigned char *)dev->dev_addr)[i];

 tp->ocpl.GroupAddr = 0;
 tp->ocpl.FunctAddr = 0;
 tp->ocpl.RxListSize = cpu_to_be16((unsigned short)RplSize);
 tp->ocpl.TxListSize = cpu_to_be16((unsigned short)TplSize);
 tp->ocpl.BufSize = cpu_to_be16((unsigned short)BufferSize);
 tp->ocpl.Reserved = 0;
 tp->ocpl.TXBufMin = TX_BUF_MIN;
 tp->ocpl.TXBufMax = TX_BUF_MAX;

 Addr = htonl(((char *)tp->ProductID - (char *)tp) + tp->dmabuffer);

 tp->ocpl.ProdIDAddr[0] = LOWORD(Addr);
 tp->ocpl.ProdIDAddr[1] = HIWORD(Addr);

 return;
}
