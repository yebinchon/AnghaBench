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
typedef  int u8 ;
typedef  int u16 ;
struct dvb_usb_adapter {struct dib0700_adapter_state* priv; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct dib0700_adapter_state {int (* set_param_save ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
typedef  enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;
struct TYPE_2__ {struct dvb_usb_adapter* priv; } ;

/* Variables and functions */
 int BAND_CBAND ; 
 int FUNC0 (int) ; 
#define  BAND_UHF 129 
#define  BAND_VHF 128 
 int /*<<< orphan*/  CT_AGC_START ; 
 int CT_AGC_STEP_0 ; 
 int CT_AGC_STEP_1 ; 
 int CT_AGC_STOP ; 
 int /*<<< orphan*/  CT_DEMOD_START ; 
 int CT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC4 (struct dvb_frontend*) ; 
 int FUNC5 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC9 (struct dvb_frontend*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 

__attribute__((used)) static int FUNC14(struct dvb_frontend *fe,
		struct dvb_frontend_parameters *fep)
{
    struct dvb_usb_adapter *adap = fe->dvb->priv;
    struct dib0700_adapter_state *state = adap->priv;
    u8 band = FUNC0(fep->frequency/1000);
    u16 offset;
    int ret = 0;
    enum frontend_tune_state tune_state = CT_SHUTDOWN;
    u16 ltgain, rf_gain_limit;

    ret = state->set_param_save(fe, fep);
    if (ret < 0)
	return ret;

    switch (band) {
    case BAND_VHF:
	    offset = 100;
	    break;
    case BAND_UHF:
	    offset = 550;
	    break;
    default:
	    offset = 0;
	    break;
    }
    offset += (FUNC5(fe) * 8 * 18 / 33 + 1) / 2;
    FUNC11(fe, offset);


    if (band == BAND_CBAND) {
	FUNC1("tuning in CBAND - soft-AGC startup\n");
	/* TODO specific wbd target for dib0090 - needed for startup ? */
	FUNC7(fe, CT_AGC_START);
	do {
		ret = FUNC2(fe);
		FUNC12(ret);
		tune_state = FUNC4(fe);
		if (tune_state == CT_AGC_STEP_0)
			FUNC9(fe, 6, 0, 1);
		else if (tune_state == CT_AGC_STEP_1) {
			FUNC3(fe, NULL, NULL, &rf_gain_limit, &ltgain);
			if (rf_gain_limit == 0)
				FUNC9(fe, 6, 0, 0);
		}
	} while (tune_state < CT_AGC_STOP);
	FUNC6(fe);
	FUNC8(fe);
	FUNC10(fe, CT_DEMOD_START);
    } else {
	FUNC1("not tuning in CBAND - standard AGC startup\n");
	FUNC6(fe);
    }

    return 0;
}