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
struct onenand_chip {int options; } ;

/* Variables and functions */
#define  ONENAND_CMD_LOCK 131 
#define  ONENAND_CMD_LOCK_TIGHT 130 
#define  ONENAND_CMD_UNLOCK 129 
#define  ONENAND_CMD_UNLOCK_ALL 128 
 int FUNC0 (struct onenand_chip*) ; 
 int ONENAND_HAS_CONT_LOCK ; 
 int /*<<< orphan*/  FUNC1 (int,struct onenand_chip*) ; 
 int ONENAND_WP_LS ; 
 int ONENAND_WP_LTS ; 
 int ONENAND_WP_US ; 

__attribute__((used)) static void FUNC2(struct onenand_chip *this, int cmd)
{
	int block_lock_scheme;
	int status;

	status = FUNC0(this);
	block_lock_scheme = !(this->options & ONENAND_HAS_CONT_LOCK);

	switch (cmd) {
	case ONENAND_CMD_UNLOCK:
	case ONENAND_CMD_UNLOCK_ALL:
		if (block_lock_scheme)
			FUNC1(ONENAND_WP_US, this);
		else
			FUNC1(status | ONENAND_WP_US, this);
		break;

	case ONENAND_CMD_LOCK:
		if (block_lock_scheme)
			FUNC1(ONENAND_WP_LS, this);
		else
			FUNC1(status | ONENAND_WP_LS, this);
		break;

	case ONENAND_CMD_LOCK_TIGHT:
		if (block_lock_scheme)
			FUNC1(ONENAND_WP_LTS, this);
		else
			FUNC1(status | ONENAND_WP_LTS, this);
		break;

	default:
		break;
	}
}