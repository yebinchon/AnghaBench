#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vc_map {int class; size_t scd_index; int index; int /*<<< orphan*/  flags; struct atm_vcc* tx_vcc; TYPE_2__* scq; } ;
struct idt77252_dev {int /*<<< orphan*/ ** scd2vc; int /*<<< orphan*/  name; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_5__ {int traffic_class; } ;
struct atm_qos {TYPE_1__ txtp; } ;
struct TYPE_6__ {scalar_t__ scd; } ;

/* Variables and functions */
#define  ATM_ABR 133 
#define  ATM_CBR 132 
#define  ATM_UBR 131 
#define  ATM_VBR 130 
 int EBUSY ; 
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  SAR_REG_TCMDQ ; 
#define  SCHED_CBR 129 
#define  SCHED_UBR 128 
 int TCMDQ_START ; 
 int /*<<< orphan*/  VCF_IDLE ; 
 int /*<<< orphan*/  VCF_TX ; 
 TYPE_2__* FUNC0 (struct idt77252_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct idt77252_dev*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct idt77252_dev*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (struct idt77252_dev*,struct vc_map*) ; 
 int FUNC5 (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ; 
 int FUNC6 (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct idt77252_dev*,struct vc_map*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct idt77252_dev *card, struct vc_map *vc,
		 struct atm_vcc *vcc, struct atm_qos *qos)
{
	int error;

	if (FUNC10(VCF_TX, &vc->flags))
		return -EBUSY;

	switch (qos->txtp.traffic_class) {
		case ATM_CBR:
			vc->class = SCHED_CBR;
			break;

		case ATM_UBR:
			vc->class = SCHED_UBR;
			break;

		case ATM_VBR:
		case ATM_ABR:
		default:
			return -EPROTONOSUPPORT;
	}

	vc->scq = FUNC0(card, vc->class);
	if (!vc->scq) {
		FUNC7("%s: can't get SCQ.\n", card->name);
		return -ENOMEM;
	}

	vc->scq->scd = FUNC4(card, vc);
	if (vc->scq->scd == 0) {
		FUNC7("%s: no SCD available.\n", card->name);
		FUNC3(card, vc->scq);
		return -ENOMEM;
	}

	FUNC2(card, vc->scq, vc->class);

	if (FUNC9(card, vc)) {
		FUNC7("%s: class %d not supported.\n",
		       card->name, qos->txtp.traffic_class);

		card->scd2vc[vc->scd_index] = NULL;
		FUNC3(card, vc->scq);
		return -EPROTONOSUPPORT;
	}

	switch (vc->class) {
		case SCHED_CBR:
			error = FUNC5(card, vc, vcc, qos);
			if (error) {
				card->scd2vc[vc->scd_index] = NULL;
				FUNC3(card, vc->scq);
				return error;
			}

			FUNC1(VCF_IDLE, &vc->flags);
			FUNC11(TCMDQ_START | vc->index, SAR_REG_TCMDQ);
			break;

		case SCHED_UBR:
			error = FUNC6(card, vc, vcc, qos);
			if (error) {
				card->scd2vc[vc->scd_index] = NULL;
				FUNC3(card, vc->scq);
				return error;
			}

			FUNC8(VCF_IDLE, &vc->flags);
			break;
	}

	vc->tx_vcc = vcc;
	FUNC8(VCF_TX, &vc->flags);
	return 0;
}