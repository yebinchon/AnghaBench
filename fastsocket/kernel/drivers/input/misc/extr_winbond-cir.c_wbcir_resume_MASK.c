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
struct wbcir_data {scalar_t__ sbase; scalar_t__ wbase; } ;
struct pnp_dev {int dummy; } ;

/* Variables and functions */
 int WBCIR_IRQ_ERR ; 
 int WBCIR_IRQ_RX ; 
 scalar_t__ WBCIR_REG_SP3_IER ; 
 scalar_t__ WBCIR_REG_WCEIR_CTL ; 
 scalar_t__ WBCIR_REG_WCEIR_EV_EN ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 struct wbcir_data* FUNC1 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct wbcir_data*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC4(struct pnp_dev *device)
{
	struct wbcir_data *data = FUNC1(device);

	/* Clear BUFF_EN, Clear END_EN, Clear MATCH_EN */
	FUNC3(data->wbase + WBCIR_REG_WCEIR_EV_EN, 0x00, 0x07);

	/* Clear CEIR_EN */
	FUNC3(data->wbase + WBCIR_REG_WCEIR_CTL, 0x00, 0x01);

	/* Enable interrupts */
	FUNC2(data);
	FUNC0(WBCIR_IRQ_RX | WBCIR_IRQ_ERR, data->sbase + WBCIR_REG_SP3_IER);

	return 0;
}