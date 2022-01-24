#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int Attributes; int Size; scalar_t__ Base; int /*<<< orphan*/  AccessSpeed; } ;
typedef  TYPE_1__ win_req_t ;
typedef  scalar_t__ u_long ;
struct pcmcia_device {int /*<<< orphan*/ * win; struct net_device* priv; } ;
struct net_device {scalar_t__ mem_start; scalar_t__ mem_end; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/ * base; } ;
typedef  TYPE_2__ pcnet_dev_t ;
struct TYPE_10__ {int CardOffset; scalar_t__ Page; } ;
typedef  TYPE_3__ memreq_t ;
struct TYPE_11__ {int priv; int tx_start_page; int rx_start_page; int stop_page; int /*<<< orphan*/ * block_output; int /*<<< orphan*/ * block_input; int /*<<< orphan*/ * get_8390_hdr; int /*<<< orphan*/ * mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MapMemPage ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  RequestWindow ; 
 int TX_PAGES ; 
 int /*<<< orphan*/  USE_SHMEM ; 
 int WIN_DATA_WIDTH_16 ; 
 int WIN_ENABLE ; 
 int WIN_MEMORY_TYPE_CM ; 
 int WIN_USE_WAIT ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*,int,int) ; 
 TYPE_6__ ei_status ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mem_speed ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pcmcia_device**,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  shmem_block_input ; 
 int /*<<< orphan*/  shmem_block_output ; 
 int /*<<< orphan*/  shmem_get_8390_hdr ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct pcmcia_device *link, int start_pg,
			      int stop_pg, int cm_offset)
{
    struct net_device *dev = link->priv;
    pcnet_dev_t *info = FUNC1(dev);
    win_req_t req;
    memreq_t mem;
    int i, window_size, offset, last_ret, last_fn;

    window_size = (stop_pg - start_pg) << 8;
    if (window_size > 32 * 1024)
	window_size = 32 * 1024;

    /* Make sure it's a power of two.  */
    window_size = FUNC11(window_size);

    /* Allocate a memory window */
    req.Attributes = WIN_DATA_WIDTH_16|WIN_MEMORY_TYPE_CM|WIN_ENABLE;
    req.Attributes |= WIN_USE_WAIT;
    req.Base = 0; req.Size = window_size;
    req.AccessSpeed = mem_speed;
    FUNC0(RequestWindow, FUNC9(&link, &req, &link->win));

    mem.CardOffset = (start_pg << 8) + cm_offset;
    offset = mem.CardOffset % window_size;
    mem.CardOffset -= offset;
    mem.Page = 0;
    FUNC0(MapMemPage, FUNC7(link->win, &mem));

    /* Try scribbling on the buffer */
    info->base = FUNC5(req.Base, window_size);
    for (i = 0; i < (TX_PAGES<<8); i += 2)
	FUNC3((i>>1), info->base+offset+i);
    FUNC12(100);
    for (i = 0; i < (TX_PAGES<<8); i += 2)
	if (FUNC2(info->base+offset+i) != (i>>1)) break;
    FUNC10(dev);
    if (i != (TX_PAGES<<8)) {
	FUNC6(info->base);
	FUNC8(link->win);
	info->base = NULL; link->win = NULL;
	goto failed;
    }

    ei_status.mem = info->base + offset;
    ei_status.priv = req.Size;
    dev->mem_start = (u_long)ei_status.mem;
    dev->mem_end = dev->mem_start + req.Size;

    ei_status.tx_start_page = start_pg;
    ei_status.rx_start_page = start_pg + TX_PAGES;
    ei_status.stop_page = start_pg + ((req.Size - offset) >> 8);

    /* set up block i/o functions */
    ei_status.get_8390_hdr = &shmem_get_8390_hdr;
    ei_status.block_input = &shmem_block_input;
    ei_status.block_output = &shmem_block_output;

    info->flags |= USE_SHMEM;
    return 0;

cs_failed:
    FUNC4(link, last_fn, last_ret);
failed:
    return 1;
}