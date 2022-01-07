
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int subpacket_count; int halt_code; int exc_addr; int timestamp; int rbox_whami; int whami; } ;
struct TYPE_8__ {TYPE_3__ logout; } ;
struct ev7_pal_subpacket {TYPE_4__ by_type; } ;
struct TYPE_5__ {scalar_t__ data_start; } ;
struct TYPE_6__ {TYPE_1__ raw; } ;
struct el_subpacket {scalar_t__ class; int type; scalar_t__ length; TYPE_2__ by_type; } ;


 scalar_t__ EL_CLASS__PAL ;

 int el_annotate_subpacket (struct el_subpacket*) ;
 int el_print_timestamp (int *) ;
 int el_process_subpackets (struct el_subpacket*,int ) ;
 int err_print_prefix ;
 int printk (char*,int ,int,...) ;

__attribute__((used)) static struct el_subpacket *
ev7_process_pal_subpacket(struct el_subpacket *header)
{
 struct ev7_pal_subpacket *packet;

 if (header->class != EL_CLASS__PAL) {
  printk("%s  ** Unexpected header CLASS %d TYPE %d, aborting\n",
         err_print_prefix,
         header->class, header->type);
  return ((void*)0);
 }

 packet = (struct ev7_pal_subpacket *)header->by_type.raw.data_start;

 switch(header->type) {
 case 128:
  printk("%s*** MCHK occurred on LPID %lld (RBOX %llx)\n",
         err_print_prefix,
         packet->by_type.logout.whami,
         packet->by_type.logout.rbox_whami);
  el_print_timestamp(&packet->by_type.logout.timestamp);
  printk("%s  EXC_ADDR: %016llx\n"
           "  HALT_CODE: %llx\n",
         err_print_prefix,
         packet->by_type.logout.exc_addr,
         packet->by_type.logout.halt_code);
  el_process_subpackets(header,
                                      packet->by_type.logout.subpacket_count);
  break;
 default:
  printk("%s  ** PAL TYPE %d SUBPACKET\n",
         err_print_prefix,
         header->type);
  el_annotate_subpacket(header);
  break;
 }

 return (struct el_subpacket *)((unsigned long)header + header->length);
}
