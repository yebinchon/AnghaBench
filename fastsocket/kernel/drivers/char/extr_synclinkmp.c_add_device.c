
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t line; int adapter_num; int port_num; int max_frame_size; int irq_level; int phys_lcr_base; int phys_statctrl_base; int phys_memory_base; int phys_sca_base; int device_name; struct TYPE_5__* next_device; } ;
typedef TYPE_1__ SLMP_INFO ;


 size_t MAX_DEVICES ;
 int hdlcdev_init (TYPE_1__*) ;
 int* maxframe ;
 int printk (char*,int ,int ,int ,int ,int ,int ,int) ;
 int sprintf (int ,char*,int,int) ;
 size_t synclinkmp_device_count ;
 TYPE_1__* synclinkmp_device_list ;

__attribute__((used)) static void add_device(SLMP_INFO *info)
{
 info->next_device = ((void*)0);
 info->line = synclinkmp_device_count;
 sprintf(info->device_name,"ttySLM%dp%d",info->adapter_num,info->port_num);

 if (info->line < MAX_DEVICES) {
  if (maxframe[info->line])
   info->max_frame_size = maxframe[info->line];
 }

 synclinkmp_device_count++;

 if ( !synclinkmp_device_list )
  synclinkmp_device_list = info;
 else {
  SLMP_INFO *current_dev = synclinkmp_device_list;
  while( current_dev->next_device )
   current_dev = current_dev->next_device;
  current_dev->next_device = info;
 }

 if ( info->max_frame_size < 4096 )
  info->max_frame_size = 4096;
 else if ( info->max_frame_size > 65535 )
  info->max_frame_size = 65535;

 printk( "SyncLink MultiPort %s: "
  "Mem=(%08x %08X %08x %08X) IRQ=%d MaxFrameSize=%u\n",
  info->device_name,
  info->phys_sca_base,
  info->phys_memory_base,
  info->phys_statctrl_base,
  info->phys_lcr_base,
  info->irq_level,
  info->max_frame_size );




}
