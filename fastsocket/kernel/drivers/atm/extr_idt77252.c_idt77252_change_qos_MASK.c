#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vc_map {int lacr; int index; int /*<<< orphan*/  flags; } ;
struct idt77252_dev {int /*<<< orphan*/  mutex; } ;
struct atm_vcc {int /*<<< orphan*/  flags; int /*<<< orphan*/  qos; struct vc_map* dev_data; struct atm_dev* dev; } ;
struct TYPE_4__ {scalar_t__ traffic_class; } ;
struct TYPE_3__ {scalar_t__ traffic_class; } ;
struct atm_qos {TYPE_2__ rxtp; TYPE_1__ txtp; } ;
struct atm_dev {struct idt77252_dev* dev_data; } ;

/* Variables and functions */
#define  ATM_ABR 131 
#define  ATM_CBR 130 
 scalar_t__ ATM_NONE ; 
#define  ATM_UBR 129 
#define  ATM_VBR 128 
 int /*<<< orphan*/  ATM_VF_HASQOS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SAR_REG_TCMDQ ; 
 int TCMDQ_LACR ; 
 int /*<<< orphan*/  VCF_IDLE ; 
 int /*<<< orphan*/  VCF_RX ; 
 int /*<<< orphan*/  VCF_TX ; 
 int FUNC0 (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ; 
 int FUNC1 (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ; 
 int FUNC2 (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ; 
 int FUNC3 (struct idt77252_dev*,struct vc_map*,struct atm_vcc*,struct atm_qos*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct atm_qos*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct atm_vcc *vcc, struct atm_qos *qos, int flags)
{
	struct atm_dev *dev = vcc->dev;
	struct idt77252_dev *card = dev->dev_data;
	struct vc_map *vc = vcc->dev_data;
	int error = 0;

	FUNC5(&card->mutex);

	if (qos->txtp.traffic_class != ATM_NONE) {
	    	if (!FUNC8(VCF_TX, &vc->flags)) {
			error = FUNC2(card, vc, vcc, qos);
			if (error)
				goto out;
		} else {
			switch (qos->txtp.traffic_class) {
			case ATM_CBR:
				error = FUNC0(card, vc, vcc, qos);
				if (error)
					goto out;
				break;

			case ATM_UBR:
				error = FUNC3(card, vc, vcc, qos);
				if (error)
					goto out;

				if (!FUNC8(VCF_IDLE, &vc->flags)) {
					FUNC9(TCMDQ_LACR | (vc->lacr << 16) |
					       vc->index, SAR_REG_TCMDQ);
				}
				break;

			case ATM_VBR:
			case ATM_ABR:
				error = -EOPNOTSUPP;
				goto out;
			}
		}
	}

	if ((qos->rxtp.traffic_class != ATM_NONE) &&
	    !FUNC8(VCF_RX, &vc->flags)) {
		error = FUNC1(card, vc, vcc, qos);
		if (error)
			goto out;
	}

	FUNC4(&vcc->qos, qos, sizeof(struct atm_qos));

	FUNC7(ATM_VF_HASQOS, &vcc->flags);

out:
	FUNC6(&card->mutex);
	return error;
}