
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_3__ {int hwif; } ;
typedef TYPE_1__ ide_drive_t ;


 int hpt3xxn_set_clock (int ,int) ;
 scalar_t__ rq_data_dir (struct request*) ;

__attribute__((used)) static void hpt3xxn_rw_disk(ide_drive_t *drive, struct request *rq)
{
 hpt3xxn_set_clock(drive->hwif, rq_data_dir(rq) ? 0x23 : 0x21);
}
