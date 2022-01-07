
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
struct slgt_info {size_t line; int max_frame_size; int irq_level; int phys_reg_addr; int device_name; TYPE_2__ params; TYPE_1__* pdev; struct slgt_info* next_device; } ;
struct TYPE_3__ {int device; } ;


 size_t MAX_DEVICES ;
 int MGSL_MODE_ASYNC ;




 int hdlcdev_init (struct slgt_info*) ;
 int* maxframe ;
 int printk (char*,char*,int ,int ,int ,int) ;
 size_t slgt_device_count ;
 struct slgt_info* slgt_device_list ;
 int sprintf (int ,char*,char*,size_t) ;
 char* tty_dev_prefix ;

__attribute__((used)) static void add_device(struct slgt_info *info)
{
 char *devstr;

 info->next_device = ((void*)0);
 info->line = slgt_device_count;
 sprintf(info->device_name, "%s%d", tty_dev_prefix, info->line);

 if (info->line < MAX_DEVICES) {
  if (maxframe[info->line])
   info->max_frame_size = maxframe[info->line];
 }

 slgt_device_count++;

 if (!slgt_device_list)
  slgt_device_list = info;
 else {
  struct slgt_info *current_dev = slgt_device_list;
  while(current_dev->next_device)
   current_dev = current_dev->next_device;
  current_dev->next_device = info;
 }

 if (info->max_frame_size < 4096)
  info->max_frame_size = 4096;
 else if (info->max_frame_size > 65535)
  info->max_frame_size = 65535;

 switch(info->pdev->device) {
 case 128:
  devstr = "GT";
  break;
 case 130:
  devstr = "GT2";
  break;
 case 129:
  devstr = "GT4";
  break;
 case 131:
  devstr = "AC";
  info->params.mode = MGSL_MODE_ASYNC;
  break;
 default:
  devstr = "(unknown model)";
 }
 printk("SyncLink %s %s IO=%08x IRQ=%d MaxFrameSize=%u\n",
  devstr, info->device_name, info->phys_reg_addr,
  info->irq_level, info->max_frame_size);




}
