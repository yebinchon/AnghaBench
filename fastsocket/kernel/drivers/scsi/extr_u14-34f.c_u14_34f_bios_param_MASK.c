#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {int dummy; } ;
struct block_device {int dummy; } ;
typedef  unsigned int sector_t ;
struct TYPE_2__ {int heads; int sectors; } ;

/* Variables and functions */
 int FALSE ; 
 TYPE_1__* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  driver_name ; 
 scalar_t__ ext_tran ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC2 (struct block_device*,unsigned int,int*) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *disk,
                 struct block_device *bdev, sector_t capacity, int *dkinfo) {
   unsigned int j = 0;
   unsigned int size = capacity;

   dkinfo[0] = FUNC0(j)->heads;
   dkinfo[1] = FUNC0(j)->sectors;
   dkinfo[2] = size / (FUNC0(j)->heads * FUNC0(j)->sectors);

   if (ext_tran && (FUNC2(bdev, capacity, dkinfo) < 0)) {
      dkinfo[0] = 255;
      dkinfo[1] = 63;
      dkinfo[2] = size / (dkinfo[0] * dkinfo[1]);
      }

#if defined (DEBUG_GEOMETRY)
   printk ("%s: bios_param, head=%d, sec=%d, cyl=%d.\n", driver_name,
           dkinfo[0], dkinfo[1], dkinfo[2]);
#endif

   return FALSE;
}