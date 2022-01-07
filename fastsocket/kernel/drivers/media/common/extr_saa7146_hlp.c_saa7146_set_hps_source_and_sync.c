
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7146_vv {int current_hps_source; int current_hps_sync; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;


 int HPS_CTRL ;
 int MASK_05 ;
 int MASK_21 ;
 int MASK_28 ;
 int MASK_30 ;
 int MASK_31 ;
 int MC2 ;
 int saa7146_read (struct saa7146_dev*,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

void saa7146_set_hps_source_and_sync(struct saa7146_dev *dev, int source, int sync)
{
 struct saa7146_vv *vv = dev->vv_data;
 u32 hps_ctrl = 0;


 hps_ctrl = saa7146_read(dev, HPS_CTRL);

 hps_ctrl &= ~( MASK_31 | MASK_30 | MASK_28 );
 hps_ctrl |= (source << 30) | (sync << 28);


 saa7146_write(dev, HPS_CTRL, hps_ctrl);
 saa7146_write(dev, MC2, (MASK_05 | MASK_21));

 vv->current_hps_source = source;
 vv->current_hps_sync = sync;
}
