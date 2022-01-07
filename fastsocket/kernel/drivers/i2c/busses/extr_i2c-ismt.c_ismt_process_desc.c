
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union i2c_smbus_data {int byte; int word; int * block; } ;
typedef int u8 ;
struct ismt_priv {int* dma_buffer; TYPE_1__* pci_dev; } ;
struct ismt_desc {int status; int rxbytes; } ;
struct TYPE_2__ {int dev; } ;


 int EAGAIN ;
 int EBADMSG ;
 int EIO ;
 int ENXIO ;
 int EPROTO ;
 int ETIMEDOUT ;





 char I2C_SMBUS_WRITE ;
 int ISMT_DESC_CLTO ;
 int ISMT_DESC_COL ;
 int ISMT_DESC_CRC ;
 int ISMT_DESC_DLTO ;
 int ISMT_DESC_LPR ;
 int ISMT_DESC_NAK ;
 int ISMT_DESC_SCS ;
 int __ismt_desc_dump (int *,struct ismt_desc const*) ;
 int dev_dbg (int *,char*) ;
 scalar_t__ likely (int) ;
 int memcpy (int *,int*,int ) ;

__attribute__((used)) static int ismt_process_desc(const struct ismt_desc *desc,
        union i2c_smbus_data *data,
        struct ismt_priv *priv, int size,
        char read_write)
{
 u8 *dma_buffer = priv->dma_buffer;

 dev_dbg(&priv->pci_dev->dev, "Processing completed descriptor\n");
 __ismt_desc_dump(&priv->pci_dev->dev, desc);

 if (desc->status & ISMT_DESC_SCS) {
  if (read_write == I2C_SMBUS_WRITE &&
      size != 129)
   return 0;

  switch (size) {
  case 131:
  case 130:
   data->byte = dma_buffer[0];
   break;
  case 128:
  case 129:
   data->word = dma_buffer[0] | (dma_buffer[1] << 8);
   break;
  case 132:
   memcpy(&data->block[1], dma_buffer, desc->rxbytes);
   data->block[0] = desc->rxbytes;
   break;
  }
  return 0;
 }

 if (likely(desc->status & ISMT_DESC_NAK))
  return -ENXIO;

 if (desc->status & ISMT_DESC_CRC)
  return -EBADMSG;

 if (desc->status & ISMT_DESC_COL)
  return -EAGAIN;

 if (desc->status & ISMT_DESC_LPR)
  return -EPROTO;

 if (desc->status & (ISMT_DESC_DLTO | ISMT_DESC_CLTO))
  return -ETIMEDOUT;

 return -EIO;
}
