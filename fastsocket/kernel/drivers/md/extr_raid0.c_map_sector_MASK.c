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
struct strip_zone {int nb_dev; } ;
struct r0conf {struct strip_zone* strip_zone; struct md_rdev** devlist; } ;
struct mddev {unsigned int chunk_sectors; struct r0conf* private; } ;
struct md_rdev {int dummy; } ;
typedef  unsigned int sector_t ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static struct md_rdev *FUNC3(struct mddev *mddev, struct strip_zone *zone,
				sector_t sector, sector_t *sector_offset)
{
	unsigned int sect_in_chunk;
	sector_t chunk;
	struct r0conf *conf = mddev->private;
	int raid_disks = conf->strip_zone[0].nb_dev;
	unsigned int chunk_sects = mddev->chunk_sectors;

	if (FUNC1(chunk_sects)) {
		int chunksect_bits = FUNC0(~chunk_sects);
		/* find the sector offset inside the chunk */
		sect_in_chunk  = sector & (chunk_sects - 1);
		sector >>= chunksect_bits;
		/* chunk in zone */
		chunk = *sector_offset;
		/* quotient is the chunk in real device*/
		FUNC2(chunk, zone->nb_dev << chunksect_bits);
	} else{
		sect_in_chunk = FUNC2(sector, chunk_sects);
		chunk = *sector_offset;
		FUNC2(chunk, chunk_sects * zone->nb_dev);
	}
	/*
	*  position the bio over the real device
	*  real sector = chunk in device + starting of zone
	*	+ the position in the chunk
	*/
	*sector_offset = (chunk * chunk_sects) + sect_in_chunk;
	return conf->devlist[(zone - conf->strip_zone)*raid_disks
			     + FUNC2(sector, zone->nb_dev)];
}