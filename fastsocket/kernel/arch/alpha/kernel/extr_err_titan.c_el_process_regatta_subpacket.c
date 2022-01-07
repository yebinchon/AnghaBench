
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data_start; scalar_t__ cpuid; } ;
struct TYPE_3__ {TYPE_2__ regatta_frame; } ;
struct el_subpacket {scalar_t__ class; int type; scalar_t__ length; TYPE_1__ by_type; } ;
struct el_common {int dummy; } ;


 scalar_t__ EL_CLASS__REGATTA_FAMILY ;





 int el_annotate_subpacket (struct el_subpacket*) ;
 int err_print_prefix ;
 int printk (char*,int ,int,...) ;
 int privateer_process_logout_frame (struct el_common*,int) ;

__attribute__((used)) static struct el_subpacket *
el_process_regatta_subpacket(struct el_subpacket *header)
{
 int status;

 if (header->class != EL_CLASS__REGATTA_FAMILY) {
  printk("%s  ** Unexpected header CLASS %d TYPE %d, aborting\n",
         err_print_prefix,
         header->class, header->type);
  return ((void*)0);
 }

 switch(header->type) {
 case 130:
 case 128:
 case 132:
 case 131:
 case 129:
  printk("%s  ** Occurred on CPU %d:\n",
         err_print_prefix,
         (int)header->by_type.regatta_frame.cpuid);
  status = privateer_process_logout_frame((struct el_common *)
   header->by_type.regatta_frame.data_start, 1);
  break;
 default:
  printk("%s  ** REGATTA TYPE %d SUBPACKET\n",
         err_print_prefix, header->type);
  el_annotate_subpacket(header);
  break;
 }


 return (struct el_subpacket *)((unsigned long)header + header->length);
}
