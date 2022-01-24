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
struct TYPE_2__ {struct dvb_usb_adapter* priv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
#define  BAND_UHF 129 
#define  BAND_VHF 128 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int) ; 
 int FUNC4 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, struct dvb_frontend_parameters *fep)
{
	struct dvb_usb_adapter *adap = fe->dvb->priv;
	struct dib0700_adapter_state *state = adap->priv;

	u16 offset;
	u8 band = FUNC0(fep->frequency/1000);
	switch (band) {
		case BAND_VHF: offset = 950; break;
		case BAND_UHF:
		default: offset = 550; break;
	}
	FUNC1("WBD for DiB7000P: %d\n", offset + FUNC2(fe));
	FUNC3(fe, offset + FUNC2(fe));
	return state->set_param_save(fe, fep);
}