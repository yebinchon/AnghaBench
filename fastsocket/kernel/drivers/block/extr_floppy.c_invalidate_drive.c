
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 int check_disk_change (struct block_device*) ;
 int fake_change ;
 int process_fd_request () ;
 int set_bit (long,int *) ;

__attribute__((used)) static int invalidate_drive(struct block_device *bdev)
{

 set_bit((long)bdev->bd_disk->private_data, &fake_change);
 process_fd_request();
 check_disk_change(bdev);
 return 0;
}
