
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {int heartbeat_sample_interval; int firmware_flash_in_progress; } ;
struct TYPE_2__ {int CDB; } ;
struct CommandList {TYPE_1__ Request; } ;


 int HEARTBEAT_SAMPLE_INTERVAL ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ is_firmware_flash_cmd (int ) ;

__attribute__((used)) static void dial_up_lockup_detection_on_fw_flash_complete(struct ctlr_info *h,
  struct CommandList *c)
{
 if (is_firmware_flash_cmd(c->Request.CDB) &&
  atomic_dec_and_test(&h->firmware_flash_in_progress))
  h->heartbeat_sample_interval = HEARTBEAT_SAMPLE_INTERVAL;
}
