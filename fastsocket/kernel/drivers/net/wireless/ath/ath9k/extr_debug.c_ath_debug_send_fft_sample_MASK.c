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
struct fft_sample_tlv {int /*<<< orphan*/  length; } ;
struct ath_softc {int /*<<< orphan*/  rfs_chan_spec_scan; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fft_sample_tlv*,int) ; 

void FUNC2(struct ath_softc *sc,
			       struct fft_sample_tlv *fft_sample_tlv)
{
	int length;
	if (!sc->rfs_chan_spec_scan)
		return;

	length = FUNC0(fft_sample_tlv->length) +
		 sizeof(*fft_sample_tlv);
	FUNC1(sc->rfs_chan_spec_scan, fft_sample_tlv, length);
}