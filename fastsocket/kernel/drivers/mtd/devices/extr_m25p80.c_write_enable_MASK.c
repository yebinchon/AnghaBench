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
typedef  int /*<<< orphan*/  u8 ;
struct m25p {int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPCODE_WREN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct m25p *flash)
{
	u8	code = OPCODE_WREN;

	return FUNC0(flash->spi, &code, 1, NULL, 0);
}