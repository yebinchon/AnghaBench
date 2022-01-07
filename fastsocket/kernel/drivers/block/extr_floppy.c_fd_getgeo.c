
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hd_geometry {int cylinders; int sectors; int heads; } ;
struct floppy_struct {int track; int sect; int head; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_4__ {int fd_device; } ;
struct TYPE_3__ {scalar_t__ private_data; } ;


 int ITYPE (int ) ;
 TYPE_2__* drive_state ;
 int get_floppy_geometry (int,int,struct floppy_struct**) ;

__attribute__((used)) static int fd_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 int drive = (long)bdev->bd_disk->private_data;
 int type = ITYPE(drive_state[drive].fd_device);
 struct floppy_struct *g;
 int ret;

 ret = get_floppy_geometry(drive, type, &g);
 if (ret)
  return ret;

 geo->heads = g->head;
 geo->sectors = g->sect;
 geo->cylinders = g->track;
 return 0;
}
