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
struct seq_file {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ S3C2410_TICNT ; 
 unsigned int S3C2410_TICNT_ENABLE ; 
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ s3c_rtc_base ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct seq_file *seq)
{
	unsigned int ticnt = FUNC0(s3c_rtc_base + S3C2410_TICNT);

	FUNC1(seq, "periodic_IRQ\t: %s\n",
		     (ticnt & S3C2410_TICNT_ENABLE) ? "yes" : "no" );
	return 0;
}