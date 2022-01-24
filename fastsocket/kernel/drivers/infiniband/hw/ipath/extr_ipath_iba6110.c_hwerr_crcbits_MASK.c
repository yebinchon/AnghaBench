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
typedef  int u16 ;
struct ipath_devdata {int ipath_flags; int ipath_hwerrmask; TYPE_1__* ipath_kregs; TYPE_2__* pcidev; scalar_t__ ipath_ht_slave_off; } ;
typedef  int ipath_err_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kr_hwerrmask; } ;

/* Variables and functions */
 int IPATH_8BIT_IN_HT0 ; 
 int IPATH_8BIT_IN_HT1 ; 
 int _IPATH_HTLANE0_CRCBITS ; 
 int _IPATH_HTLANE1_CRCBITS ; 
 int _IPATH_HTLINK0_CRCBITS ; 
 int _IPATH_HTLINK1_CRCBITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int infinipath_hwe_htclnkabyte1crcerr ; 
 int infinipath_hwe_htclnkbbyte1crcerr ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ipath_devdata*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC6(struct ipath_devdata *dd, ipath_err_t hwerrs,
			  char *msg, size_t msgl)
{
	char bitsmsg[64];
	ipath_err_t crcbits = hwerrs &
		(_IPATH_HTLINK0_CRCBITS | _IPATH_HTLINK1_CRCBITS);
	/* don't check if 8bit HT */
	if (dd->ipath_flags & IPATH_8BIT_IN_HT0)
		crcbits &= ~infinipath_hwe_htclnkabyte1crcerr;
	/* don't check if 8bit HT */
	if (dd->ipath_flags & IPATH_8BIT_IN_HT1)
		crcbits &= ~infinipath_hwe_htclnkbbyte1crcerr;
	/*
	 * we'll want to ignore link errors on link that is
	 * not in use, if any.  For now, complain about both
	 */
	if (crcbits) {
		u16 ctrl0, ctrl1;
		FUNC4(bitsmsg, sizeof bitsmsg,
			 "[HT%s lane %s CRC (%llx); powercycle to completely clear]",
			 !(crcbits & _IPATH_HTLINK1_CRCBITS) ?
			 "0 (A)" : (!(crcbits & _IPATH_HTLINK0_CRCBITS)
				    ? "1 (B)" : "0+1 (A+B)"),
			 !(crcbits & _IPATH_HTLANE1_CRCBITS) ? "0"
			 : (!(crcbits & _IPATH_HTLANE0_CRCBITS) ? "1" :
			    "0+1"), (unsigned long long) crcbits);
		FUNC5(msg, bitsmsg, msgl);

		/*
		 * print extra info for debugging.  slave/primary
		 * config word 4, 8 (link control 0, 1)
		 */

		if (FUNC3(dd->pcidev,
					 dd->ipath_ht_slave_off + 0x4,
					 &ctrl0))
			FUNC0(&dd->pcidev->dev, "Couldn't read "
				 "linkctrl0 of slave/primary "
				 "config block\n");
		else if (!(ctrl0 & 1 << 6))
			/* not if EOC bit set */
			FUNC1("HT linkctrl0 0x%x%s%s\n", ctrl0,
				  ((ctrl0 >> 8) & 7) ? " CRC" : "",
				  ((ctrl0 >> 4) & 1) ? "linkfail" :
				  "");
		if (FUNC3(dd->pcidev,
					 dd->ipath_ht_slave_off + 0x8,
					 &ctrl1))
			FUNC0(&dd->pcidev->dev, "Couldn't read "
				 "linkctrl1 of slave/primary "
				 "config block\n");
		else if (!(ctrl1 & 1 << 6))
			/* not if EOC bit set */
			FUNC1("HT linkctrl1 0x%x%s%s\n", ctrl1,
				  ((ctrl1 >> 8) & 7) ? " CRC" : "",
				  ((ctrl1 >> 4) & 1) ? "linkfail" :
				  "");

		/* disable until driver reloaded */
		dd->ipath_hwerrmask &= ~crcbits;
		FUNC2(dd, dd->ipath_kregs->kr_hwerrmask,
				 dd->ipath_hwerrmask);
		FUNC1("HT crc errs: %s\n", msg);
	} else
		FUNC1("ignoring HT crc errors 0x%llx, "
			  "not in use\n", (unsigned long long)
			  (hwerrs & (_IPATH_HTLINK0_CRCBITS |
				     _IPATH_HTLINK1_CRCBITS)));
}