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
struct txx9spi {int /*<<< orphan*/  waitq; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TXx9_SPCR0 ; 
 int TXx9_SPCR0_RBSIE ; 
 int FUNC0 (struct txx9spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct txx9spi*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct txx9spi *c = dev_id;

	/* disable rx intr */
	FUNC1(c, FUNC0(c, TXx9_SPCR0) & ~TXx9_SPCR0_RBSIE,
			TXx9_SPCR0);
	FUNC2(&c->waitq);
	return IRQ_HANDLED;
}