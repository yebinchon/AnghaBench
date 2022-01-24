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
struct lcs_card {int /*<<< orphan*/  tx_emitted; TYPE_1__* tx_buffer; int /*<<< orphan*/  write; } ;
typedef  scalar_t__ __u16 ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static void
FUNC2(struct lcs_card *card)
{
	FUNC0(5, trace, "emittx");
	*(__u16 *)(card->tx_buffer->data + card->tx_buffer->count) = 0;
	card->tx_buffer->count += 2;
	FUNC1(&card->write, card->tx_buffer);
	card->tx_buffer = NULL;
	card->tx_emitted++;
}