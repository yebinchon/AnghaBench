
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;
struct smsc911x_data {scalar_t__* loopback_rx_pkt; scalar_t__* loopback_tx_pkt; } ;


 int EIO ;
 int HW ;
 unsigned int MIN_PACKET_SIZE ;
 unsigned int RX_STS_ES_ ;
 int SMSC_TRACE (int ,char*) ;
 int SMSC_WARNING (int ,char*,...) ;
 unsigned int TX_CMD_A_FIRST_SEG_ ;
 unsigned int TX_CMD_A_LAST_SEG_ ;
 int TX_DATA_FIFO ;
 unsigned int TX_STS_ES_ ;
 int memset (scalar_t__*,int ,unsigned int) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,unsigned int) ;
 unsigned int smsc911x_rx_get_rxstatus (struct smsc911x_data*) ;
 int smsc911x_rx_readfifo (struct smsc911x_data*,unsigned int*,int) ;
 unsigned int smsc911x_tx_get_txstatus (struct smsc911x_data*) ;
 int smsc911x_tx_writefifo (struct smsc911x_data*,unsigned int*,int) ;
 int udelay (int) ;

__attribute__((used)) static int smsc911x_phy_check_loopbackpkt(struct smsc911x_data *pdata)
{
 unsigned int tries;
 u32 wrsz;
 u32 rdsz;
 ulong bufp;

 for (tries = 0; tries < 10; tries++) {
  unsigned int txcmd_a;
  unsigned int txcmd_b;
  unsigned int status;
  unsigned int pktlength;
  unsigned int i;


  memset(pdata->loopback_rx_pkt, 0, MIN_PACKET_SIZE);


  txcmd_a = (u32)((ulong)pdata->loopback_tx_pkt & 0x03) << 16;
  txcmd_a |= TX_CMD_A_FIRST_SEG_ | TX_CMD_A_LAST_SEG_;
  txcmd_a |= MIN_PACKET_SIZE;

  txcmd_b = MIN_PACKET_SIZE << 16 | MIN_PACKET_SIZE;

  smsc911x_reg_write(pdata, TX_DATA_FIFO, txcmd_a);
  smsc911x_reg_write(pdata, TX_DATA_FIFO, txcmd_b);

  bufp = (ulong)pdata->loopback_tx_pkt & (~0x3);
  wrsz = MIN_PACKET_SIZE + 3;
  wrsz += (u32)((ulong)pdata->loopback_tx_pkt & 0x3);
  wrsz >>= 2;

  smsc911x_tx_writefifo(pdata, (unsigned int *)bufp, wrsz);


  i = 60;
  do {
   udelay(5);
   status = smsc911x_tx_get_txstatus(pdata);
  } while ((i--) && (!status));

  if (!status) {
   SMSC_WARNING(HW, "Failed to transmit "
    "during loopback test");
   continue;
  }
  if (status & TX_STS_ES_) {
   SMSC_WARNING(HW, "Transmit encountered "
    "errors during loopback test");
   continue;
  }


  i = 60;
  do {
   udelay(5);
   status = smsc911x_rx_get_rxstatus(pdata);
  } while ((i--) && (!status));

  if (!status) {
   SMSC_WARNING(HW,
    "Failed to receive during loopback test");
   continue;
  }
  if (status & RX_STS_ES_) {
   SMSC_WARNING(HW, "Receive encountered "
    "errors during loopback test");
   continue;
  }

  pktlength = ((status & 0x3FFF0000UL) >> 16);
  bufp = (ulong)pdata->loopback_rx_pkt;
  rdsz = pktlength + 3;
  rdsz += (u32)((ulong)pdata->loopback_rx_pkt & 0x3);
  rdsz >>= 2;

  smsc911x_rx_readfifo(pdata, (unsigned int *)bufp, rdsz);

  if (pktlength != (MIN_PACKET_SIZE + 4)) {
   SMSC_WARNING(HW, "Unexpected packet size "
    "during loop back test, size=%d, will retry",
    pktlength);
  } else {
   unsigned int j;
   int mismatch = 0;
   for (j = 0; j < MIN_PACKET_SIZE; j++) {
    if (pdata->loopback_tx_pkt[j]
        != pdata->loopback_rx_pkt[j]) {
     mismatch = 1;
     break;
    }
   }
   if (!mismatch) {
    SMSC_TRACE(HW, "Successfully verified "
        "loopback packet");
    return 0;
   } else {
    SMSC_WARNING(HW, "Data mismatch "
     "during loop back test, will retry");
   }
  }
 }

 return -EIO;
}
