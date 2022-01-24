#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tg3_napi {int /*<<< orphan*/ * tx_ring; TYPE_1__* tx_buffers; struct tg3* tp; } ;
struct tg3 {int dma_limit; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int fragmented; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SHORT_DMA_BUG ; 
 int TXD_FLAG_END ; 
 scalar_t__ FUNC1 (struct tg3*,int,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct tg3*,int,int,int) ; 
 scalar_t__ FUNC4 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int,int,int) ; 

__attribute__((used)) static bool FUNC6(struct tg3_napi *tnapi, u32 *entry, u32 *budget,
			    dma_addr_t map, u32 len, u32 flags,
			    u32 mss, u32 vlan)
{
	struct tg3 *tp = tnapi->tp;
	bool hwbug = false;

	if (FUNC4(tp, SHORT_DMA_BUG) && len <= 8)
		hwbug = true;

	if (FUNC2(map, len))
		hwbug = true;

	if (FUNC3(tp, map, len, mss))
		hwbug = true;

	if (FUNC1(tp, map, len))
		hwbug = true;

	if (tp->dma_limit) {
		u32 prvidx = *entry;
		u32 tmp_flag = flags & ~TXD_FLAG_END;
		while (len > tp->dma_limit && *budget) {
			u32 frag_len = tp->dma_limit;
			len -= tp->dma_limit;

			/* Avoid the 8byte DMA problem */
			if (len <= 8) {
				len += tp->dma_limit / 2;
				frag_len = tp->dma_limit / 2;
			}

			tnapi->tx_buffers[*entry].fragmented = true;

			FUNC5(&tnapi->tx_ring[*entry], map,
				      frag_len, tmp_flag, mss, vlan);
			*budget -= 1;
			prvidx = *entry;
			*entry = FUNC0(*entry);

			map += frag_len;
		}

		if (len) {
			if (*budget) {
				FUNC5(&tnapi->tx_ring[*entry], map,
					      len, flags, mss, vlan);
				*budget -= 1;
				*entry = FUNC0(*entry);
			} else {
				hwbug = true;
				tnapi->tx_buffers[prvidx].fragmented = false;
			}
		}
	} else {
		FUNC5(&tnapi->tx_ring[*entry], map,
			      len, flags, mss, vlan);
		*entry = FUNC0(*entry);
	}

	return hwbug;
}