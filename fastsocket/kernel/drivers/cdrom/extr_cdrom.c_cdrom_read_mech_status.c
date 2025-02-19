
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct packet_command {int* cmd; } ;
struct cdrom_slot {int dummy; } ;
struct cdrom_mechstat_header {int dummy; } ;
struct cdrom_device_ops {int (* generic_packet ) (struct cdrom_device_info*,struct packet_command*) ;} ;
struct cdrom_device_info {int sanyo_slot; int capacity; struct cdrom_device_ops* ops; } ;
struct TYPE_3__ {int nslots; int curslot; } ;
struct cdrom_changer_info {TYPE_2__* slots; TYPE_1__ hdr; } ;
struct TYPE_4__ {int disc_present; scalar_t__ change; } ;


 int CGC_DATA_READ ;
 int GPCMD_MECHANISM_STATUS ;
 int init_cdrom_command (struct packet_command*,struct cdrom_changer_info*,int,int ) ;
 int stub1 (struct cdrom_device_info*,struct packet_command*) ;

__attribute__((used)) static int cdrom_read_mech_status(struct cdrom_device_info *cdi,
      struct cdrom_changer_info *buf)
{
 struct packet_command cgc;
 struct cdrom_device_ops *cdo = cdi->ops;
 int length;






 if (cdi->sanyo_slot) {
  buf->hdr.nslots = 3;
  buf->hdr.curslot = cdi->sanyo_slot == 3 ? 0 : cdi->sanyo_slot;
  for (length = 0; length < 3; length++) {
   buf->slots[length].disc_present = 1;
   buf->slots[length].change = 0;
  }
  return 0;
 }

 length = sizeof(struct cdrom_mechstat_header) +
   cdi->capacity * sizeof(struct cdrom_slot);

 init_cdrom_command(&cgc, buf, length, CGC_DATA_READ);
 cgc.cmd[0] = GPCMD_MECHANISM_STATUS;
 cgc.cmd[8] = (length >> 8) & 0xff;
 cgc.cmd[9] = length & 0xff;
 return cdo->generic_packet(cdi, &cgc);
}
