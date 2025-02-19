
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame; int second; int minute; } ;
union cdrom_addr {int lba; TYPE_1__ msf; } ;
typedef scalar_t__ u_char ;


 scalar_t__ CDROM_LBA ;

__attribute__((used)) static
void sanitize_format(union cdrom_addr *addr,
       u_char * curr, u_char requested)
{
 if (*curr == requested)
  return;
 if (requested == CDROM_LBA) {
  addr->lba = (int) addr->msf.frame +
   75 * (addr->msf.second - 2 + 60 * addr->msf.minute);
 } else {
  int lba = addr->lba;
  addr->msf.frame = lba % 75;
  lba /= 75;
  lba += 2;
  addr->msf.second = lba % 60;
  addr->msf.minute = lba / 60;
 }
 *curr = requested;
}
