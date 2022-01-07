
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u16 ;
struct transform_t {TYPE_4__* link; } ;
struct six_axis_t {int mz; int my; int mx; int fz; int fy; int fx; } ;
struct poll_delay_t {int dummy; } ;
struct jr3_pci_subdev_private {int errors; int state; int retries; TYPE_2__* range; void* serial_no; void* model_no; int channel_no; struct jr3_channel* channel; } ;
struct TYPE_7__ {int mz; int my; int mx; int fz; int fy; int fx; } ;
struct force_array {int v2; int v1; int mz; int my; int mx; int fz; int fy; int fx; } ;
struct jr3_channel {TYPE_3__ offsets; struct force_array full_scale; int serial_no; int model_no; int errors; } ;
struct comedi_subdevice {struct jr3_pci_subdev_private* private; } ;
typedef enum link_types { ____Placeholder_link_types } link_types ;
struct TYPE_8__ {int link_type; int link_amount; } ;
struct TYPE_5__ {int min; int max; } ;
struct TYPE_6__ {TYPE_1__ range; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 struct six_axis_t get_max_full_scales (struct jr3_channel volatile*) ;
 struct six_axis_t get_min_full_scales (struct jr3_channel volatile*) ;
 int get_s16 (int *) ;
 void* get_u16 (int *) ;
 int is_complete (struct jr3_channel volatile*) ;
 struct poll_delay_t poll_delay_min_max (int,int) ;
 int printk (char*,...) ;
 int sensor_change ;
 int set_full_scales (struct jr3_channel volatile*,struct six_axis_t) ;
 int set_offset (struct jr3_channel volatile*) ;
 int set_s16 (int *,int ) ;
 int set_transforms (struct jr3_channel volatile*,struct transform_t,int ) ;






 int use_offset (struct jr3_channel volatile*,int ) ;
 int use_transform (struct jr3_channel volatile*,int ) ;
 int watch_dog ;
 int watch_dog2 ;

__attribute__((used)) static struct poll_delay_t jr3_pci_poll_subdevice(struct comedi_subdevice *s)
{
 struct poll_delay_t result = poll_delay_min_max(1000, 2000);
 struct jr3_pci_subdev_private *p = s->private;
 int i;

 if (p) {
  volatile struct jr3_channel *channel = p->channel;
  int errors = get_u16(&channel->errors);

  if (errors != p->errors) {
   printk("Errors: %x -> %x\n", p->errors, errors);
   p->errors = errors;
  }
  if (errors & (watch_dog | watch_dog2 | sensor_change)) {

   p->state = 128;

  }
  switch (p->state) {
  case 128:{
    u16 model_no = get_u16(&channel->model_no);
    u16 serial_no = get_u16(&channel->serial_no);
    if ((errors & (watch_dog | watch_dog2)) ||
        model_no == 0 || serial_no == 0) {




     result = poll_delay_min_max(1000, 2000);
    } else {
     p->retries = 0;
     p->state =
         129;
     result = poll_delay_min_max(1000, 2000);
    }
   }
   break;
  case 129:{
    p->retries++;
    if (p->retries < 10) {

     result = poll_delay_min_max(1000, 2000);
    } else {
     struct transform_t transf;

     p->model_no =
         get_u16(&channel->model_no);
     p->serial_no =
         get_u16(&channel->serial_no);

     printk
         ("Setting transform for channel %d\n",
          p->channel_no);
     printk("Sensor Model     = %i\n",
            p->model_no);
     printk("Sensor Serial    = %i\n",
            p->serial_no);


     for (i = 0; i < ARRAY_SIZE(transf.link); i++) {
      transf.link[i].link_type =
       (enum link_types)0;
      transf.link[i].link_amount = 0;
     }

     set_transforms(channel, transf, 0);
     use_transform(channel, 0);
     p->state =
         131;
     result = poll_delay_min_max(20, 100);
    }
   } break;
  case 131:{
    if (!is_complete(channel)) {
     printk
         ("state_jr3_init_transform_complete complete = %d\n",
          is_complete(channel));
     result = poll_delay_min_max(20, 100);
    } else {

     struct six_axis_t min_full_scale;
     struct six_axis_t max_full_scale;

     min_full_scale =
         get_min_full_scales(channel);
     printk("Obtained Min. Full Scales:\n");
     printk("%i   ", (min_full_scale).fx);
     printk("%i   ", (min_full_scale).fy);
     printk("%i   ", (min_full_scale).fz);
     printk("%i   ", (min_full_scale).mx);
     printk("%i   ", (min_full_scale).my);
     printk("%i   ", (min_full_scale).mz);
     printk("\n");

     max_full_scale =
         get_max_full_scales(channel);
     printk("Obtained Max. Full Scales:\n");
     printk("%i   ", (max_full_scale).fx);
     printk("%i   ", (max_full_scale).fy);
     printk("%i   ", (max_full_scale).fz);
     printk("%i   ", (max_full_scale).mx);
     printk("%i   ", (max_full_scale).my);
     printk("%i   ", (max_full_scale).mz);
     printk("\n");

     set_full_scales(channel,
       max_full_scale);

     p->state =
         132;
     result = poll_delay_min_max(20, 100);
    }
   }
   break;
  case 132:{
    if (!is_complete(channel)) {
     printk
         ("state_jr3_init_set_full_scale_complete complete = %d\n",
          is_complete(channel));
     result = poll_delay_min_max(20, 100);
    } else {
     volatile struct force_array *full_scale;


     full_scale = &channel->full_scale;
     p->range[0].range.min =
         -get_s16(&full_scale->fx) * 1000;
     p->range[0].range.max =
         get_s16(&full_scale->fx) * 1000;
     p->range[1].range.min =
         -get_s16(&full_scale->fy) * 1000;
     p->range[1].range.max =
         get_s16(&full_scale->fy) * 1000;
     p->range[2].range.min =
         -get_s16(&full_scale->fz) * 1000;
     p->range[2].range.max =
         get_s16(&full_scale->fz) * 1000;
     p->range[3].range.min =
         -get_s16(&full_scale->mx) * 100;
     p->range[3].range.max =
         get_s16(&full_scale->mx) * 100;
     p->range[4].range.min =
         -get_s16(&full_scale->my) * 100;
     p->range[4].range.max =
         get_s16(&full_scale->my) * 100;
     p->range[5].range.min =
         -get_s16(&full_scale->mz) * 100;
     p->range[5].range.max =
         get_s16(&full_scale->mz) * 100;
     p->range[6].range.min = -get_s16(&full_scale->v1) * 100;
     p->range[6].range.max = get_s16(&full_scale->v1) * 100;
     p->range[7].range.min = -get_s16(&full_scale->v2) * 100;
     p->range[7].range.max = get_s16(&full_scale->v2) * 100;
     p->range[8].range.min = 0;
     p->range[8].range.max = 65535;

     {
      int i;
      for (i = 0; i < 9; i++) {
       printk("%d %d - %d\n",
              i,
              p->
              range[i].range.
              min,
              p->
              range[i].range.
              max);
      }
     }

     use_offset(channel, 0);
     p->state =
         130;
     result = poll_delay_min_max(40, 100);
    }
   }
   break;
  case 130:{
    if (!is_complete(channel)) {
     printk
         ("state_jr3_init_use_offset_complete complete = %d\n",
          is_complete(channel));
     result = poll_delay_min_max(20, 100);
    } else {
     printk
         ("Default offsets %d %d %d %d %d %d\n",
          get_s16(&channel->offsets.fx),
          get_s16(&channel->offsets.fy),
          get_s16(&channel->offsets.fz),
          get_s16(&channel->offsets.mx),
          get_s16(&channel->offsets.my),
          get_s16(&channel->offsets.mz));

     set_s16(&channel->offsets.fx, 0);
     set_s16(&channel->offsets.fy, 0);
     set_s16(&channel->offsets.fz, 0);
     set_s16(&channel->offsets.mx, 0);
     set_s16(&channel->offsets.my, 0);
     set_s16(&channel->offsets.mz, 0);

     set_offset(channel);

     p->state = 133;
    }
   }
   break;
  case 133:{
    poll_delay_min_max(10000, 20000);
   }
   break;
  default:{
    poll_delay_min_max(1000, 2000);
   }
   break;
  }
 }
 return result;
}
