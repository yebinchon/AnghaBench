#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long long,unsigned int) ; 
 unsigned char* fake_storep ; 
 int FUNC1 (struct scsi_cmnd*,unsigned char*,int) ; 
 int FUNC2 (struct scsi_cmnd*,unsigned char*,int) ; 
 unsigned int scsi_debug_sector_size ; 
 unsigned int sdebug_store_sectors ; 

__attribute__((used)) static int FUNC3(struct scsi_cmnd *scmd,
			    struct sdebug_dev_info *devi,
			    unsigned long long lba, unsigned int num, int write)
{
	int ret;
	unsigned int block, rest = 0;
	int (*func)(struct scsi_cmnd *, unsigned char *, int);

	func = write ? fetch_to_dev_buffer : fill_from_dev_buffer;

	block = FUNC0(lba, sdebug_store_sectors);
	if (block + num > sdebug_store_sectors)
		rest = block + num - sdebug_store_sectors;

	ret = func(scmd, fake_storep + (block * scsi_debug_sector_size),
		   (num - rest) * scsi_debug_sector_size);
	if (!ret && rest)
		ret = func(scmd, fake_storep, rest * scsi_debug_sector_size);

	return ret;
}