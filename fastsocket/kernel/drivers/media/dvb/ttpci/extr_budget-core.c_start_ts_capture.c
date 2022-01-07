
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct saa7146_dev {int dummy; } ;
struct TYPE_4__ {int dma; } ;
struct budget {int buffer_size; int buffer_height; int buffer_width; struct saa7146_dev* dev; TYPE_2__ pt; int video_port; TYPE_1__* card; scalar_t__ ttbp; int grabbing; int fe_synced; int feeding; } ;
struct TYPE_3__ {int type; } ;


 int BASE_EVEN3 ;
 int BASE_ODD3 ;
 int BASE_PAGE3 ;
 int BRS_CTRL ;





 int BUDGET_VIDEO_PORTA ;
 int DD1_INIT ;
 int MASK_04 ;
 int MASK_08 ;
 int MASK_09 ;
 int MASK_10 ;
 int MASK_20 ;
 int MASK_24 ;
 int MASK_25 ;
 int MASK_26 ;
 int MC1 ;
 int MC2 ;
 int ME1 ;
 int NUM_LINE_BYTE3 ;
 int PCI_BT_V1 ;
 int PITCH3 ;
 int PROT_ADDR3 ;
 int SAA7146_IER_ENABLE (struct saa7146_dev*,int) ;
 int SAA7146_ISR_CLEAR (struct saa7146_dev*,int) ;
 int dprintk (int,char*,struct budget*) ;
 int mdelay (int) ;
 int memset (int ,int,int) ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

__attribute__((used)) static int start_ts_capture(struct budget *budget)
{
 struct saa7146_dev *dev = budget->dev;

 dprintk(2, "budget: %p\n", budget);

 if (!budget->feeding || !budget->fe_synced)
  return 0;

 saa7146_write(dev, MC1, MASK_20);

 memset(budget->grabbing, 0x00, budget->buffer_size);

 saa7146_write(dev, PCI_BT_V1, 0x001c0000 | (saa7146_read(dev, PCI_BT_V1) & ~0x001f0000));

 budget->ttbp = 0;
 switch(budget->card->type) {
 case 131:
  saa7146_write(dev, DD1_INIT, 0x04000000);
  saa7146_write(dev, MC2, (MASK_09 | MASK_25));
  saa7146_write(dev, BRS_CTRL, 0x00000000);
  break;
 case 128:
  saa7146_write(dev, DD1_INIT, 0x00000200);
  saa7146_write(dev, MC2, (MASK_10 | MASK_26));
  saa7146_write(dev, BRS_CTRL, 0x60000000);
  break;
 case 132:
 case 129:
 case 130:
  if (budget->video_port == BUDGET_VIDEO_PORTA) {
   saa7146_write(dev, DD1_INIT, 0x06000200);
   saa7146_write(dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));
   saa7146_write(dev, BRS_CTRL, 0x00000000);
  } else {
   saa7146_write(dev, DD1_INIT, 0x00000600);
   saa7146_write(dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));
   saa7146_write(dev, BRS_CTRL, 0x60000000);
  }
  break;
 default:
  if (budget->video_port == BUDGET_VIDEO_PORTA) {
   saa7146_write(dev, DD1_INIT, 0x06000200);
   saa7146_write(dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));
   saa7146_write(dev, BRS_CTRL, 0x00000000);
  } else {
   saa7146_write(dev, DD1_INIT, 0x02000600);
   saa7146_write(dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));
   saa7146_write(dev, BRS_CTRL, 0x60000000);
  }
 }

 saa7146_write(dev, MC2, (MASK_08 | MASK_24));
 mdelay(10);

 saa7146_write(dev, BASE_ODD3, 0);
 if (budget->buffer_size > budget->buffer_height * budget->buffer_width) {

  saa7146_write(dev, BASE_EVEN3, budget->buffer_height * budget->buffer_width);
 } else {

  saa7146_write(dev, BASE_EVEN3, 0);
 }
 saa7146_write(dev, PROT_ADDR3, budget->buffer_size);
 saa7146_write(dev, BASE_PAGE3, budget->pt.dma | ME1 | 0x90);

 saa7146_write(dev, PITCH3, budget->buffer_width);
 saa7146_write(dev, NUM_LINE_BYTE3,
   (budget->buffer_height << 16) | budget->buffer_width);

 saa7146_write(dev, MC2, (MASK_04 | MASK_20));

 SAA7146_ISR_CLEAR(budget->dev, MASK_10);
 SAA7146_IER_ENABLE(budget->dev, MASK_10);
 saa7146_write(dev, MC1, (MASK_04 | MASK_20));

 return 0;
}
