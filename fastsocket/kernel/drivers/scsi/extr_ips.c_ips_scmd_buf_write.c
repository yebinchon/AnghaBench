
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int scsi_sg_copy_from_buffer (struct scsi_cmnd*,void*,unsigned int) ;

__attribute__((used)) static void
ips_scmd_buf_write(struct scsi_cmnd *scmd, void *data, unsigned int count)
{
 unsigned long flags;

 local_irq_save(flags);
 scsi_sg_copy_from_buffer(scmd, data, count);
 local_irq_restore(flags);
}
