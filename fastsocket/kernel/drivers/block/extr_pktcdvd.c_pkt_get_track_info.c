
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int track_information_length; } ;
typedef TYPE_1__ track_information ;
struct pktcdvd_device {int dummy; } ;
struct packet_command {int* cmd; int quiet; int buflen; } ;
typedef int __u8 ;
typedef int __u16 ;


 int CGC_DATA_READ ;
 int GPCMD_READ_TRACK_RZONE_INFO ;
 int be16_to_cpu (int ) ;
 int init_cdrom_command (struct packet_command*,TYPE_1__*,int,int ) ;
 int pkt_generic_packet (struct pktcdvd_device*,struct packet_command*) ;

__attribute__((used)) static int pkt_get_track_info(struct pktcdvd_device *pd, __u16 track, __u8 type, track_information *ti)
{
 struct packet_command cgc;
 int ret;

 init_cdrom_command(&cgc, ti, 8, CGC_DATA_READ);
 cgc.cmd[0] = GPCMD_READ_TRACK_RZONE_INFO;
 cgc.cmd[1] = type & 3;
 cgc.cmd[4] = (track & 0xff00) >> 8;
 cgc.cmd[5] = track & 0xff;
 cgc.cmd[8] = 8;
 cgc.quiet = 1;

 if ((ret = pkt_generic_packet(pd, &cgc)))
  return ret;

 cgc.buflen = be16_to_cpu(ti->track_information_length) +
       sizeof(ti->track_information_length);

 if (cgc.buflen > sizeof(track_information))
  cgc.buflen = sizeof(track_information);

 cgc.cmd[8] = cgc.buflen;
 return pkt_generic_packet(pd, &cgc);
}
