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
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {int vc_size_row; } ;

/* Variables and functions */
 int WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct vc_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vc_data*,int) ; 
 int vc_x ; 
 int vc_y ; 

__attribute__((used)) static void FUNC3(struct vc_data *vc)
{
	u16 buf[WIDTH];
	int i;

	for (i = 0; i < WIDTH; i++) {
		u16 glyph = FUNC2(vc,
				2 * (vc_x + i) + vc_y * vc->vc_size_row);
		buf[i] = FUNC1(vc, glyph, 1);
	}
	FUNC0(buf);
}