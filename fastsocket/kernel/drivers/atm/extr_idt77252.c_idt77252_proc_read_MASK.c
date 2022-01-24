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
struct vc_map {struct atm_vcc* tx_vcc; } ;
struct idt77252_dev {int tct_size; scalar_t__ tct_base; struct vc_map** vcs; int /*<<< orphan*/ * irqstat; } ;
struct atm_vcc {int vpi; int vci; } ;
struct atm_dev {struct idt77252_dev* dev_data; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int SAR_SRAM_TCT_SIZE ; 
 int FUNC0 (struct idt77252_dev*,unsigned long) ; 
 int FUNC1 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC2(struct atm_dev *dev, loff_t * pos, char *page)
{
	struct idt77252_dev *card = dev->dev_data;
	int i, left;

	left = (int) *pos;
	if (!left--)
		return FUNC1(page, "IDT77252 Interrupts:\n");
	if (!left--)
		return FUNC1(page, "TSIF:  %lu\n", card->irqstat[15]);
	if (!left--)
		return FUNC1(page, "TXICP: %lu\n", card->irqstat[14]);
	if (!left--)
		return FUNC1(page, "TSQF:  %lu\n", card->irqstat[12]);
	if (!left--)
		return FUNC1(page, "TMROF: %lu\n", card->irqstat[11]);
	if (!left--)
		return FUNC1(page, "PHYI:  %lu\n", card->irqstat[10]);
	if (!left--)
		return FUNC1(page, "FBQ3A: %lu\n", card->irqstat[8]);
	if (!left--)
		return FUNC1(page, "FBQ2A: %lu\n", card->irqstat[7]);
	if (!left--)
		return FUNC1(page, "RSQF:  %lu\n", card->irqstat[6]);
	if (!left--)
		return FUNC1(page, "EPDU:  %lu\n", card->irqstat[5]);
	if (!left--)
		return FUNC1(page, "RAWCF: %lu\n", card->irqstat[4]);
	if (!left--)
		return FUNC1(page, "FBQ1A: %lu\n", card->irqstat[3]);
	if (!left--)
		return FUNC1(page, "FBQ0A: %lu\n", card->irqstat[2]);
	if (!left--)
		return FUNC1(page, "RSQAF: %lu\n", card->irqstat[1]);
	if (!left--)
		return FUNC1(page, "IDT77252 Transmit Connection Table:\n");

	for (i = 0; i < card->tct_size; i++) {
		unsigned long tct;
		struct atm_vcc *vcc;
		struct vc_map *vc;
		char *p;

		vc = card->vcs[i];
		if (!vc)
			continue;

		vcc = NULL;
		if (vc->tx_vcc)
			vcc = vc->tx_vcc;
		if (!vcc)
			continue;
		if (left--)
			continue;

		p = page;
		p += FUNC1(p, "  %4u: %u.%u: ", i, vcc->vpi, vcc->vci);
		tct = (unsigned long) (card->tct_base + i * SAR_SRAM_TCT_SIZE);

		for (i = 0; i < 8; i++)
			p += FUNC1(p, " %08x", FUNC0(card, tct + i));
		p += FUNC1(p, "\n");
		return p - page;
	}
	return 0;
}