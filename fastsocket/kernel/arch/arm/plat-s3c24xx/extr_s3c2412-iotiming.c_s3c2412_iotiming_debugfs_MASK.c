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
union s3c_iobank {struct s3c2412_iobank_timing* io_2412; } ;
struct seq_file {int dummy; } ;
struct s3c_cpufreq_config {int dummy; } ;
struct s3c2412_iobank_timing {int /*<<< orphan*/  wstbrd; int /*<<< orphan*/  wstwen; int /*<<< orphan*/  wstoen; int /*<<< orphan*/  wstwr; int /*<<< orphan*/  wstrd; int /*<<< orphan*/  idcy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct seq_file *seq,
			      struct s3c_cpufreq_config *cfg,
			      union s3c_iobank *iob)
{
	struct s3c2412_iobank_timing *bt = iob->io_2412;

	FUNC1(seq,
		   "\tRead: idcy=%d.%d wstrd=%d.%d wstwr=%d,%d"
		   "wstoen=%d.%d wstwen=%d.%d wstbrd=%d.%d\n",
		   FUNC0(bt->idcy),
		   FUNC0(bt->wstrd),
		   FUNC0(bt->wstwr),
		   FUNC0(bt->wstoen),
		   FUNC0(bt->wstwen),
		   FUNC0(bt->wstbrd));
}