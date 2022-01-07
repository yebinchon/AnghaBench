
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct beiscsi_hba {scalar_t__ csr_va; } ;


 int BEISCSI_LOG_INIT ;
 int EIO ;
 int KERN_ERR ;
 int MPU_EP_SEMAPHORE ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int) ;
 int msleep (int) ;
 int readl (void*) ;

int be_chk_reset_complete(struct beiscsi_hba *phba)
{
 unsigned int num_loop;
 u8 *mpu_sem = 0;
 u32 status;

 num_loop = 1000;
 mpu_sem = (u8 *)phba->csr_va + MPU_EP_SEMAPHORE;
 msleep(5000);

 while (num_loop) {
  status = readl((void *)mpu_sem);

  if ((status & 0x80000000) || (status & 0x0000FFFF) == 0xC000)
   break;
  msleep(60);
  num_loop--;
 }

 if ((status & 0x80000000) || (!num_loop)) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
       "BC_%d : Failed in be_chk_reset_complete"
       "status = 0x%x\n", status);
  return -EIO;
 }

 return 0;
}
