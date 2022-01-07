
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int Error; } ;
struct rio_info {int RIONumBootPkts; int RIOBootCount; TYPE_1__ RIOError; scalar_t__ RIOBootPackets; scalar_t__ RIOBooting; } ;
struct DownLoad {int Count; int DataP; } ;


 int BOOT_IN_PROGRESS ;
 int COPYIN_FAILED ;
 int EBUSY ;
 int EFAULT ;
 int ENOMEM ;
 int HOST_FILE_TOO_LARGE ;
 int RIO_DEBUG_BOOT ;
 int RTA_BOOT_DATA_SIZE ;
 int SIXTY_FOUR_K ;
 scalar_t__ copy_from_user (int *,int ,int) ;
 int func_enter () ;
 int func_exit () ;
 int memset (scalar_t__,int ,int) ;
 int rio_dprintk (int ,char*,...) ;

int RIOBootCodeRTA(struct rio_info *p, struct DownLoad * rbp)
{
 int offset;

 func_enter();

 rio_dprintk(RIO_DEBUG_BOOT, "Data at user address %p\n", rbp->DataP);




 if (rbp->Count > SIXTY_FOUR_K) {
  rio_dprintk(RIO_DEBUG_BOOT, "RTA Boot Code Too Large!\n");
  p->RIOError.Error = HOST_FILE_TOO_LARGE;
  func_exit();
  return -ENOMEM;
 }

 if (p->RIOBooting) {
  rio_dprintk(RIO_DEBUG_BOOT, "RTA Boot Code : BUSY BUSY BUSY!\n");
  p->RIOError.Error = BOOT_IN_PROGRESS;
  func_exit();
  return -EBUSY;
 }






 offset = (RTA_BOOT_DATA_SIZE - (rbp->Count % RTA_BOOT_DATA_SIZE)) % RTA_BOOT_DATA_SIZE;






 memset(p->RIOBootPackets, 0, offset);





 if (copy_from_user(((u8 *)p->RIOBootPackets) + offset, rbp->DataP, rbp->Count)) {
  rio_dprintk(RIO_DEBUG_BOOT, "Bad data copy from user space\n");
  p->RIOError.Error = COPYIN_FAILED;
  func_exit();
  return -EFAULT;
 }





 p->RIONumBootPkts = (rbp->Count + offset) / RTA_BOOT_DATA_SIZE;
 p->RIOBootCount = rbp->Count;

 func_exit();
 return 0;
}
