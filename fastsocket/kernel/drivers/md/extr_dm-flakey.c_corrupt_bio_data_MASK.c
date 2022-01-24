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
struct flakey_c {unsigned int corrupt_bio_byte; char corrupt_bio_value; } ;
struct bio {scalar_t__ bi_sector; int /*<<< orphan*/  bi_rw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct bio*,char,int,char,int /*<<< orphan*/ ,unsigned long long,unsigned int) ; 
 scalar_t__ WRITE ; 
 unsigned int FUNC1 (struct bio*) ; 
 char* FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 

__attribute__((used)) static void FUNC4(struct bio *bio, struct flakey_c *fc)
{
	unsigned bio_bytes = FUNC1(bio);
	char *data = FUNC2(bio);

	/*
	 * Overwrite the Nth byte of the data returned.
	 */
	if (data && bio_bytes >= fc->corrupt_bio_byte) {
		data[fc->corrupt_bio_byte - 1] = fc->corrupt_bio_value;

		FUNC0("Corrupting data bio=%p by writing %u to byte %u "
			"(rw=%c bi_rw=%lu bi_sector=%llu cur_bytes=%u)\n",
			bio, fc->corrupt_bio_value, fc->corrupt_bio_byte,
			(FUNC3(bio) == WRITE) ? 'w' : 'r',
			bio->bi_rw, (unsigned long long)bio->bi_sector, bio_bytes);
	}
}