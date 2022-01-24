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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ hsa_available ; 
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static int FUNC1(struct inode *inode, struct file *filep)
{
	if (hsa_available)
		FUNC0();
	return 0;
}