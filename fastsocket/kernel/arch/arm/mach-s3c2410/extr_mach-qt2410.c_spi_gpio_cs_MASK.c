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
struct s3c2410_spigpio_info {int dummy; } ;

/* Variables and functions */
#define  BITBANG_CS_ACTIVE 129 
#define  BITBANG_CS_INACTIVE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct s3c2410_spigpio_info *spi, int cs)
{
	switch (cs) {
	case BITBANG_CS_ACTIVE:
		FUNC1(FUNC0(5), 0);
		break;
	case BITBANG_CS_INACTIVE:
		FUNC1(FUNC0(5), 1);
		break;
	}
}