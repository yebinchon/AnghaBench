
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_qla_host {size_t aen_out; size_t aen_in; int hardware_lock; int host_no; int aen_q_count; struct aen* aen_q; } ;
struct aen {int* mbox_sts; } ;


 int DEBUG2 (int ) ;

 int MAX_AEN_ENTRIES ;
 int MBOX_AEN_REG_COUNT ;


 int printk (char*,int ,int,int,int,int,...) ;
 int qla4xxx_process_ddb_changed (struct scsi_qla_host*,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void qla4xxx_process_aen(struct scsi_qla_host * ha, uint8_t process_aen)
{
 uint32_t mbox_sts[MBOX_AEN_REG_COUNT];
 struct aen *aen;
 int i;
 unsigned long flags;

 spin_lock_irqsave(&ha->hardware_lock, flags);
 while (ha->aen_out != ha->aen_in) {
  aen = &ha->aen_q[ha->aen_out];

  for (i = 0; i < MBOX_AEN_REG_COUNT; i++)
   mbox_sts[i] = aen->mbox_sts[i];

  ha->aen_q_count++;
  ha->aen_out++;

  if (ha->aen_out == MAX_AEN_ENTRIES)
   ha->aen_out = 0;

  spin_unlock_irqrestore(&ha->hardware_lock, flags);

  DEBUG2(printk("qla4xxx(%ld): AEN[%d]=0x%08x, mbx1=0x%08x mbx2=0x%08x"
   " mbx3=0x%08x mbx4=0x%08x\n", ha->host_no,
   (ha->aen_out ? (ha->aen_out-1): (MAX_AEN_ENTRIES-1)),
   mbox_sts[0], mbox_sts[1], mbox_sts[2],
   mbox_sts[3], mbox_sts[4]));

  switch (mbox_sts[0]) {
  case 129:
   switch (process_aen) {
   case 130:
    DEBUG2(printk("scsi%ld: AEN[%d] %04x, index "
           "[%d] state=%04x FLUSHED!\n",
           ha->host_no, ha->aen_out,
           mbox_sts[0], mbox_sts[2],
           mbox_sts[3]));
    break;
   case 128:
   default:

    if (mbox_sts[1] == 1)
     qla4xxx_process_ddb_changed(ha,
      mbox_sts[2], mbox_sts[3],
      mbox_sts[4]);
    break;
   }
  }
  spin_lock_irqsave(&ha->hardware_lock, flags);
 }
 spin_unlock_irqrestore(&ha->hardware_lock, flags);
}
