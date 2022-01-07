
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maple_device {int unit; int port; int dev; int (* fileerr_handler ) (struct maple_device*,void*) ;} ;


 int dev_warn (int *,char*,int ,int ,int) ;
 int stub1 (struct maple_device*,void*) ;

__attribute__((used)) static void maple_response_fileerr(struct maple_device *mdev, void *recvbuf)
{
 if (mdev->fileerr_handler) {
  mdev->fileerr_handler(mdev, recvbuf);
  return;
 } else
  dev_warn(&mdev->dev, "device at (%d, %d) reports"
   "file error 0x%X\n", mdev->port, mdev->unit,
   ((int *)recvbuf)[1]);
}
