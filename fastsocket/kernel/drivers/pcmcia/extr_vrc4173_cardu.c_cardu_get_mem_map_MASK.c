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
typedef  int /*<<< orphan*/  vrc4173_socket_t ;
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int u_char ;
struct pccard_mem_map {int map; int card_start; int sys_start; int sys_stop; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADR_WIN_EN ; 
 int EINVAL ; 
 int /*<<< orphan*/  MAP_16BIT ; 
 int /*<<< orphan*/  MAP_ACTIVE ; 
 int /*<<< orphan*/  MAP_ATTRIB ; 
 int /*<<< orphan*/  MAP_WRPROT ; 
 int MEM_WIN_DSIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MEM_WIN_REGSET ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int MEM_WIN_WP ; 
 int /*<<< orphan*/ * cardu_sockets ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(unsigned int sock, struct pccard_mem_map *mem)
{
	vrc4173_socket_t *socket = &cardu_sockets[sock];
	uint32_t start, stop, offset, page;
	uint8_t window;
	u_char map;

	map = mem->map;
	if (map > 4)
		return -EINVAL;

	window = FUNC5(socket, ADR_WIN_EN);
	mem->flags = (window & FUNC1(map)) ? MAP_ACTIVE : 0;

	start = FUNC6(socket, FUNC3(map));
	mem->flags |= (start & MEM_WIN_DSIZE) ? MAP_16BIT : 0;
	start = (start & 0x0fff) << 12;

	stop = FUNC6(socket, FUNC0(map));
	stop = ((stop & 0x0fff) << 12) + 0x0fff;

	offset = FUNC6(socket, FUNC2(map));
	mem->flags |= (offset & MEM_WIN_WP) ? MAP_WRPROT : 0;
	mem->flags |= (offset & MEM_WIN_REGSET) ? MAP_ATTRIB : 0;
	offset = ((offset & 0x3fff) << 12) + start;
	mem->card_start = offset & 0x03ffffff;

	page = FUNC5(socket, FUNC4(map)) << 24;
	mem->sys_start = start + page;
	mem->sys_stop = start + page;

	return 0;
}