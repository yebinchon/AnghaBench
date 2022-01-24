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
struct tmio_nand {scalar_t__ fcr; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FCR_STATUS ; 
 int FCR_STATUS_BUSY ; 
 struct tmio_nand* FUNC0 (struct mtd_info*) ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd)
{
	struct tmio_nand *tmio = FUNC0(mtd);

	return !(FUNC1(tmio->fcr + FCR_STATUS) & FCR_STATUS_BUSY);
}