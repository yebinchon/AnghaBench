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
typedef  int u_char ;
struct pccard_io_map {int map; int /*<<< orphan*/  flags; void* stop; void* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADR_WIN_EN ; 
 int EINVAL ; 
 int /*<<< orphan*/  IO_WIN_CNT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  MAP_16BIT ; 
 int /*<<< orphan*/  MAP_ACTIVE ; 
 int /*<<< orphan*/  MAP_AUTOSZ ; 
 int /*<<< orphan*/ * cardu_sockets ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(unsigned int sock, struct pccard_io_map *io)
{
	vrc4173_socket_t *socket = &cardu_sockets[sock];
	uint8_t ioctl, window;
	u_char map;

	map = io->map;
	if (map > 1)
		return -EINVAL;

	io->start = FUNC6(socket, FUNC4(map));
	io->stop = FUNC6(socket, FUNC2(map));

	ioctl = FUNC5(socket, IO_WIN_CNT);
	window = FUNC5(socket, ADR_WIN_EN);
	io->flags  = (window & FUNC3(map)) ? MAP_ACTIVE : 0;
	if (ioctl & FUNC1(map))
		io->flags |= MAP_AUTOSZ;
	else if (ioctl & FUNC0(map))
		io->flags |= MAP_16BIT;

	return 0;
}