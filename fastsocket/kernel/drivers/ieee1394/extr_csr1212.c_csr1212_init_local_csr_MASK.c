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
typedef  int /*<<< orphan*/  u32 ;
struct csr1212_csr {int max_rom; int /*<<< orphan*/  bus_info_len; int /*<<< orphan*/  bus_info_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void FUNC2(struct csr1212_csr *csr,
			    const u32 *bus_info_data, int max_rom)
{
	static const int mr_map[] = { 4, 64, 1024, 0 };

	FUNC0(max_rom & ~0x3);
	csr->max_rom = mr_map[max_rom];
	FUNC1(csr->bus_info_data, bus_info_data, csr->bus_info_len);
}