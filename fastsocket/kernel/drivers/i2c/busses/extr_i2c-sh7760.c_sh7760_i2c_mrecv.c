
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cami2c {TYPE_1__* msg; int flags; } ;
struct TYPE_2__ {int addr; int len; } ;


 int FCR_RFRST ;
 int FCR_TFRST ;
 int FIER_RXIE ;
 int FIFO_SIZE ;
 int I2CFCR ;
 int I2CFIER ;
 int I2CMAR ;
 int I2CMCR ;
 int I2CMIER ;
 int I2CMSR ;
 int I2CSAR ;
 int IDF_RECV ;
 int MCR_ESG ;
 int MCR_MIE ;
 int MIE_MALE ;
 int MIE_MATE ;
 int MIE_MNRE ;
 int MIE_MSTE ;
 int OUT32 (struct cami2c*,int ,int) ;

__attribute__((used)) static void sh7760_i2c_mrecv(struct cami2c *id)
{
 int len;

 id->flags |= IDF_RECV;


 OUT32(id, I2CSAR, 0xfe);
 OUT32(id, I2CMAR, (id->msg->addr << 1) | 1);


 if (id->msg->len >= FIFO_SIZE)
  len = FIFO_SIZE - 1;
 else
  len = id->msg->len - 1;

 OUT32(id, I2CFCR, FCR_RFRST | FCR_TFRST);
 OUT32(id, I2CFCR, FCR_TFRST | ((len & 0xF) << 4));

 OUT32(id, I2CMSR, 0);
 OUT32(id, I2CMCR, MCR_MIE | MCR_ESG);
 OUT32(id, I2CMIER, MIE_MNRE | MIE_MALE | MIE_MSTE | MIE_MATE);
 OUT32(id, I2CFIER, FIER_RXIE);
}
