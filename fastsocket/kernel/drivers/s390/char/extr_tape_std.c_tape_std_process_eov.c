
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int dummy; } ;


 int MTBSR ;
 int MTWEOF ;
 scalar_t__ tape_mtop (struct tape_device*,int ,int) ;

void
tape_std_process_eov(struct tape_device *device)
{




 if (tape_mtop(device, MTBSR, 1) == 0 &&
     tape_mtop(device, MTWEOF, 1) == 0) {
  tape_mtop(device, MTBSR, 1);
 }
}
