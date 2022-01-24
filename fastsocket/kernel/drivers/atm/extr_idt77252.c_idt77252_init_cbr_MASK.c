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
struct vc_map {int ntste; int /*<<< orphan*/  flags; } ;
struct idt77252_dev {int tst_free; unsigned long utopia_pcr; int /*<<< orphan*/  name; scalar_t__ tst_size; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_pcr; scalar_t__ pcr; scalar_t__ min_pcr; } ;
struct atm_qos {TYPE_1__ txtp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,...) ; 
 int SAR_TST_RESERVED ; 
 int /*<<< orphan*/  TSTE_OPC_CBR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VCF_TX ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct idt77252_dev*,struct vc_map*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct idt77252_dev*,struct vc_map*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct idt77252_dev *card, struct vc_map *vc,
		  struct atm_vcc *vcc, struct atm_qos *qos)
{
	int tst_free, tst_used, tst_entries;
	unsigned long tmpl, modl;
	int tcr, tcra;

	if ((qos->txtp.max_pcr == 0) &&
	    (qos->txtp.pcr == 0) && (qos->txtp.min_pcr == 0)) {
		FUNC5("%s: trying to open a CBR VC with cell rate = 0\n",
		       card->name);
		return -EINVAL;
	}

	tst_used = 0;
	tst_free = card->tst_free;
	if (FUNC6(VCF_TX, &vc->flags))
		tst_used = vc->ntste;
	tst_free += tst_used;

	tcr = FUNC2(&qos->txtp);
	tcra = tcr >= 0 ? tcr : -tcr;

	FUNC1("%s: CBR target cell rate = %d\n", card->name, tcra);

	tmpl = (unsigned long) tcra * ((unsigned long) card->tst_size - 2);
	modl = tmpl % (unsigned long)card->utopia_pcr;

	tst_entries = (int) (tmpl / card->utopia_pcr);
	if (tcr > 0) {
		if (modl > 0)
			tst_entries++;
	} else if (tcr == 0) {
		tst_entries = tst_free - SAR_TST_RESERVED;
		if (tst_entries <= 0) {
			FUNC5("%s: no CBR bandwidth free.\n", card->name);
			return -ENOSR;
		}
	}

	if (tst_entries == 0) {
		FUNC5("%s: selected CBR bandwidth < granularity.\n",
		       card->name);
		return -EINVAL;
	}

	if (tst_entries > (tst_free - SAR_TST_RESERVED)) {
		FUNC5("%s: not enough CBR bandwidth free.\n", card->name);
		return -ENOSR;
	}

	vc->ntste = tst_entries;

	card->tst_free = tst_free - tst_entries;
	if (FUNC6(VCF_TX, &vc->flags)) {
		if (tst_used == tst_entries)
			return 0;

		FUNC0("%s: modify %d -> %d entries in TST.\n",
			card->name, tst_used, tst_entries);
		FUNC3(card, vc, tst_entries, TSTE_OPC_CBR);
		return 0;
	}

	FUNC0("%s: setting %d entries in TST.\n", card->name, tst_entries);
	FUNC4(card, vc, tst_entries, TSTE_OPC_CBR);
	return 0;
}