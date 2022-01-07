
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Scsi_Host {int this_id; int cmd_per_lun; int can_queue; scalar_t__ hostt; } ;
struct TYPE_2__ {int id_mask; int id_higher_mask; int flags; int * disconnected_queue; int * issue_queue; int * connected; scalar_t__ targets_present; scalar_t__ dma_len; scalar_t__* busy; scalar_t__ aborted; } ;


 int FLAG_CHECK_LAST_BYTE_SENT ;
 int HOSTNO ;
 int ICR_BASE ;
 int INITIATOR_COMMAND_REG ;
 int MODE_REG ;
 int MR_BASE ;
 int NCR5380_all_init () ;
 int NCR5380_write (int ,int ) ;
 int SELECT_ENABLE_REG ;
 int SETUP_HOSTDATA (struct Scsi_Host*) ;
 int TARGET_COMMAND_REG ;
 struct Scsi_Host* first_instance ;
 TYPE_1__* hostdata ;
 int init_tags () ;
 int printk (char*,int ) ;
 scalar_t__ the_template ;

__attribute__((used)) static int NCR5380_init (struct Scsi_Host *instance, int flags)
{
    int i;
    SETUP_HOSTDATA(instance);

    NCR5380_all_init();

    hostdata->aborted = 0;
    hostdata->id_mask = 1 << instance->this_id;
    hostdata->id_higher_mask = 0;
    for (i = hostdata->id_mask; i <= 0x80; i <<= 1)
 if (i > hostdata->id_mask)
     hostdata->id_higher_mask |= i;
    for (i = 0; i < 8; ++i)
 hostdata->busy[i] = 0;






    hostdata->targets_present = 0;
    hostdata->connected = ((void*)0);
    hostdata->issue_queue = ((void*)0);
    hostdata->disconnected_queue = ((void*)0);
    hostdata->flags = FLAG_CHECK_LAST_BYTE_SENT;

    if (!the_template) {
 the_template = instance->hostt;
 first_instance = instance;
    }



    if ((instance->cmd_per_lun > 1) || (instance->can_queue > 1))
  printk("scsi%d: WARNING : support for multiple outstanding commands enabled\n"
         "        without AUTOSENSE option, contingent allegiance conditions may\n"
         "        be incorrectly cleared.\n", HOSTNO);


    NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE);
    NCR5380_write(MODE_REG, MR_BASE);
    NCR5380_write(TARGET_COMMAND_REG, 0);
    NCR5380_write(SELECT_ENABLE_REG, 0);

    return 0;
}
