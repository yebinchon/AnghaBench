
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct saa7146_vv {TYPE_4__* ov_fmt; } ;
struct TYPE_5__ {int height; int top; int left; int width; } ;
struct TYPE_6__ {int field; TYPE_1__ w; } ;
struct TYPE_7__ {TYPE_2__ win; } ;
struct saa7146_fh {TYPE_3__ ov; struct saa7146_dev* dev; } ;
struct saa7146_dev {struct saa7146_vv* vv_data; } ;
struct TYPE_8__ {int trans; int pixelformat; } ;


 int MASK_06 ;
 int MASK_22 ;
 int MC1 ;
 int saa7146_set_clipping_rect (struct saa7146_fh*) ;
 int saa7146_set_output_format (struct saa7146_dev*,int ) ;
 int saa7146_set_position (struct saa7146_dev*,int ,int ,int ,int ,int ) ;
 int saa7146_set_window (struct saa7146_dev*,int ,int ,int ) ;
 int saa7146_write (struct saa7146_dev*,int ,int) ;

int saa7146_enable_overlay(struct saa7146_fh *fh)
{
 struct saa7146_dev *dev = fh->dev;
 struct saa7146_vv *vv = dev->vv_data;

 saa7146_set_window(dev, fh->ov.win.w.width, fh->ov.win.w.height, fh->ov.win.field);
 saa7146_set_position(dev, fh->ov.win.w.left, fh->ov.win.w.top, fh->ov.win.w.height, fh->ov.win.field, vv->ov_fmt->pixelformat);
 saa7146_set_output_format(dev, vv->ov_fmt->trans);
 saa7146_set_clipping_rect(fh);


 saa7146_write(dev, MC1, (MASK_06 | MASK_22));
 return 0;
}
