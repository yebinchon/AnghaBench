
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union el_timestamp {int as_int; } ;
struct TYPE_9__ {int frame_length; } ;
struct TYPE_8__ {int frame_length; int frame_packet_count; union el_timestamp timestamp; } ;
struct TYPE_7__ {int frame_length; int frame_packet_count; union el_timestamp timestamp; } ;
struct TYPE_6__ {int frame_length; int frame_packet_count; } ;
struct TYPE_10__ {TYPE_4__ logout_header; TYPE_3__ err_halt; TYPE_2__ sys_event; TYPE_1__ sys_err; } ;
struct el_subpacket {unsigned long length; int type; int class; TYPE_5__ by_type; } ;


 int EL_CLASS__HEADER ;




 int el_print_timestamp (union el_timestamp*) ;
 int el_process_subpackets (struct el_subpacket*,int) ;
 int err_print_prefix ;
 int printk (char*,int ,char*,int ,...) ;

__attribute__((used)) static struct el_subpacket *
el_process_header_subpacket(struct el_subpacket *header)
{
 union el_timestamp timestamp;
 char *name = "UNKNOWN EVENT";
 int packet_count = 0;
 int length = 0;

 if (header->class != EL_CLASS__HEADER) {
  printk("%s** Unexpected header CLASS %d TYPE %d, aborting\n",
         err_print_prefix,
         header->class, header->type);
  return ((void*)0);
 }

 switch(header->type) {
 case 129:
  name = "SYSTEM ERROR";
  length = header->by_type.sys_err.frame_length;
  packet_count =
   header->by_type.sys_err.frame_packet_count;
  timestamp.as_int = 0;
  break;
 case 128:
  name = "SYSTEM EVENT";
  length = header->by_type.sys_event.frame_length;
  packet_count =
   header->by_type.sys_event.frame_packet_count;
  timestamp = header->by_type.sys_event.timestamp;
  break;
 case 131:
  name = "ERROR HALT";
  length = header->by_type.err_halt.frame_length;
  packet_count =
   header->by_type.err_halt.frame_packet_count;
  timestamp = header->by_type.err_halt.timestamp;
  break;
 case 130:
  name = "LOGOUT FRAME";
  length = header->by_type.logout_header.frame_length;
  packet_count = 1;
  timestamp.as_int = 0;
  break;
 default:
  printk("%s** Unknown header - CLASS %d TYPE %d, aborting\n",
         err_print_prefix,
         header->class, header->type);
  return ((void*)0);
 }

 printk("%s*** %s:\n"
          "  CLASS %d, TYPE %d\n",
        err_print_prefix,
        name,
        header->class, header->type);
 el_print_timestamp(&timestamp);




 el_process_subpackets(header, packet_count);


 header = (struct el_subpacket *)
  ((unsigned long)header + header->length + length);
 return header;
}
