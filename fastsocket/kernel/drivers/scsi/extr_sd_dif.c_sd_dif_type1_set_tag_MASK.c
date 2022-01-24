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
typedef  int u8 ;
struct sd_dif_tuple {int app_tag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void FUNC1(void *prot, void *tag_buf, unsigned int sectors)
{
	struct sd_dif_tuple *sdt = prot;
	u8 *tag = tag_buf;
	unsigned int i, j;

	for (i = 0, j = 0 ; i < sectors ; i++, j += 2, sdt++) {
		sdt->app_tag = tag[j] << 8 | tag[j+1];
		FUNC0(sdt->app_tag == 0xffff);
	}
}