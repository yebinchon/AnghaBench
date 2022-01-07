
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {char* buf; unsigned long len; } ;
struct cami2c {int status; int flags; int xfer_done; struct i2c_msg* msg; } ;
typedef int irqreturn_t ;


 unsigned long FCR_RFRST ;
 unsigned long FCR_TFRST ;
 unsigned long FIER_TXIE ;
 int FIFO_SIZE ;
 unsigned long FSR_RDF ;
 unsigned long FSR_TDFE ;
 unsigned long FSR_TEND ;
 int I2CFCR ;
 int I2CFIER ;
 int I2CFSR ;
 int I2CMCR ;
 int I2CMIER ;
 int I2CMSR ;
 int I2CRFDR ;
 int I2CRXTX ;
 int I2CSAR ;
 int I2CSCR ;
 int I2CSSR ;
 int I2CTFDR ;
 int IDF_SEND ;
 int IDF_STOP ;
 int IDS_ARBLOST ;
 int IDS_DONE ;
 int IDS_NACK ;
 int IN32 (struct cami2c*,int ) ;
 int IRQ_HANDLED ;
 unsigned long MCR_FSB ;
 unsigned long MCR_MIE ;
 unsigned long MIE_MSTE ;
 unsigned long MSR_MAL ;
 unsigned long MSR_MAT ;
 unsigned long MSR_MNR ;
 unsigned long MSR_MST ;
 int OUT32 (struct cami2c*,int ,unsigned long) ;
 int complete (int *) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t sh7760_i2c_irq(int irq, void *ptr)
{
 struct cami2c *id = ptr;
 struct i2c_msg *msg = id->msg;
 char *data = msg->buf;
 unsigned long msr, fsr, fier, len;

 msr = IN32(id, I2CMSR);
 fsr = IN32(id, I2CFSR);


 if (msr & MSR_MAL) {
  OUT32(id, I2CMCR, 0);
  OUT32(id, I2CSCR, 0);
  OUT32(id, I2CSAR, 0);
  id->status |= IDS_DONE | IDS_ARBLOST;
  goto out;
 }

 if (msr & MSR_MNR) {






  udelay(100);
  OUT32(id, I2CFCR, FCR_RFRST | FCR_TFRST);
  OUT32(id, I2CMCR, MCR_MIE | MCR_FSB);
  OUT32(id, I2CFIER, 0);
  OUT32(id, I2CMIER, MIE_MSTE);
  OUT32(id, I2CSCR, 0);
  OUT32(id, I2CSAR, 0);
  id->status |= IDS_NACK;
  msr &= ~MSR_MAT;
  fsr = 0;

 }


 if (msr & MSR_MST) {
  id->status |= IDS_DONE;
  goto out;
 }


 if (msr & MSR_MAT)
  OUT32(id, I2CMCR, MCR_MIE);

 fier = IN32(id, I2CFIER);

 if (fsr & FSR_RDF) {
  len = IN32(id, I2CRFDR);
  if (msg->len <= len) {
   if (id->flags & IDF_STOP) {
    OUT32(id, I2CMCR, MCR_MIE | MCR_FSB);
    OUT32(id, I2CFIER, 0);

    udelay(5);

   } else {
    id->status |= IDS_DONE;




    fsr &= ~FSR_RDF;
   }
  }
  while (msg->len && len) {
   *data++ = IN32(id, I2CRXTX);
   msg->len--;
   len--;
  }

  if (msg->len) {
   len = (msg->len >= FIFO_SIZE) ? FIFO_SIZE - 1
            : msg->len - 1;

   OUT32(id, I2CFCR, FCR_TFRST | ((len & 0xf) << 4));
  }

 } else if (id->flags & IDF_SEND) {
  if ((fsr & FSR_TEND) && (msg->len < 1)) {
   if (id->flags & IDF_STOP) {
    OUT32(id, I2CMCR, MCR_MIE | MCR_FSB);
   } else {
    id->status |= IDS_DONE;




    fsr &= ~FSR_TEND;
   }
  }
  if (fsr & FSR_TDFE) {
   while (msg->len && (IN32(id, I2CTFDR) < FIFO_SIZE)) {
    OUT32(id, I2CRXTX, *data++);
    msg->len--;
   }

   if (msg->len < 1) {
    fier &= ~FIER_TXIE;
    OUT32(id, I2CFIER, fier);
   } else {
    len = (msg->len >= FIFO_SIZE) ? 2 : 0;
    OUT32(id, I2CFCR,
       FCR_RFRST | ((len & 3) << 2));
   }
  }
 }
out:
 if (id->status & IDS_DONE) {
  OUT32(id, I2CMIER, 0);
  OUT32(id, I2CFIER, 0);
  id->msg = ((void*)0);
  complete(&id->xfer_done);
 }

 OUT32(id, I2CMSR, ~msr);
 OUT32(id, I2CFSR, ~fsr);
 OUT32(id, I2CSSR, 0);

 return IRQ_HANDLED;
}
