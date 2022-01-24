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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00lib_conf {TYPE_1__* conf; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_2__ {int long_frame_max_tx_count; int short_frame_max_tx_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXRX_CSR4 ; 
 int /*<<< orphan*/  TXRX_CSR4_LONG_RETRY_LIMIT ; 
 int /*<<< orphan*/  TXRX_CSR4_OFDM_TX_FALLBACK_CCK ; 
 int /*<<< orphan*/  TXRX_CSR4_OFDM_TX_RATE_DOWN ; 
 int /*<<< orphan*/  TXRX_CSR4_OFDM_TX_RATE_STEP ; 
 int /*<<< orphan*/  TXRX_CSR4_SHORT_RETRY_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rt2x00_dev *rt2x00dev,
				       struct rt2x00lib_conf *libconf)
{
	u32 reg;

	FUNC1(rt2x00dev, TXRX_CSR4, &reg);
	FUNC0(&reg, TXRX_CSR4_OFDM_TX_RATE_DOWN, 1);
	FUNC0(&reg, TXRX_CSR4_OFDM_TX_RATE_STEP, 0);
	FUNC0(&reg, TXRX_CSR4_OFDM_TX_FALLBACK_CCK, 0);
	FUNC0(&reg, TXRX_CSR4_LONG_RETRY_LIMIT,
			   libconf->conf->long_frame_max_tx_count);
	FUNC0(&reg, TXRX_CSR4_SHORT_RETRY_LIMIT,
			   libconf->conf->short_frame_max_tx_count);
	FUNC2(rt2x00dev, TXRX_CSR4, reg);
}