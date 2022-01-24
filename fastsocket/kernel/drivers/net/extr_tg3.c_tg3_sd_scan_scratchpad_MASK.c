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
typedef  int u32 ;
struct tg3_ocir {scalar_t__ signature; int version_flags; } ;
struct tg3 {int dummy; } ;

/* Variables and functions */
 int TG3_OCIR_FLAG_ACTIVE ; 
 int TG3_OCIR_LEN ; 
 scalar_t__ TG3_OCIR_SIG_MAGIC ; 
 int TG3_SD_NUM_RECS ; 
 int /*<<< orphan*/  FUNC0 (struct tg3_ocir*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int*,int,int) ; 

__attribute__((used)) static void FUNC2(struct tg3 *tp, struct tg3_ocir *ocir)
{
	int i;

	for (i = 0; i < TG3_SD_NUM_RECS; i++, ocir++) {
		u32 off = i * TG3_OCIR_LEN, len = TG3_OCIR_LEN;

		FUNC1(tp, (u32 *) ocir, off, len);
		off += len;

		if (ocir->signature != TG3_OCIR_SIG_MAGIC ||
		    !(ocir->version_flags & TG3_OCIR_FLAG_ACTIVE))
			FUNC0(ocir, 0, TG3_OCIR_LEN);
	}
}