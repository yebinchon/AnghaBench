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
typedef  int u64 ;
struct as_io_context {int seek_samples; int seek_mean; int seek_total; } ;
struct as_data {int new_seek_total; int new_seek_mean; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static void FUNC2(struct as_data *ad, struct as_io_context *aic,
				sector_t sdist)
{
	u64 total;

	if (aic->seek_samples == 0) {
		ad->new_seek_total = (7*ad->new_seek_total + 256*(u64)sdist)/8;
		ad->new_seek_mean = ad->new_seek_total / 256;
	}

	/*
	 * Don't allow the seek distance to get too large from the
	 * odd fragment, pagein, etc
	 */
	if (aic->seek_samples <= 60) /* second&third seek */
		sdist = FUNC1(sdist, (aic->seek_mean * 4) + 2*1024*1024);
	else
		sdist = FUNC1(sdist, (aic->seek_mean * 4)	+ 2*1024*64);

	aic->seek_samples = (7*aic->seek_samples + 256) / 8;
	aic->seek_total = (7*aic->seek_total + (u64)256*sdist) / 8;
	total = aic->seek_total + (aic->seek_samples/2);
	FUNC0(total, aic->seek_samples);
	aic->seek_mean = (sector_t)total;
}