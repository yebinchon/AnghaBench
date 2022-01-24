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
struct ipath_devdata {int dummy; } ;
typedef  int ipath_err_t ;

/* Variables and functions */
 int INFINIPATH_E_HARDWARE ; 
 int INFINIPATH_E_IBSTATUSCHANGED ; 
 int INFINIPATH_E_INVALIDADDR ; 
 int INFINIPATH_E_INVALIDEEPCMD ; 
 int INFINIPATH_E_PKTERRS ; 
 int INFINIPATH_E_RBADTID ; 
 int INFINIPATH_E_RBADVERSION ; 
 int INFINIPATH_E_REBP ; 
 int INFINIPATH_E_RESET ; 
 int INFINIPATH_E_RFORMATERR ; 
 int INFINIPATH_E_RHDR ; 
 int INFINIPATH_E_RHDRLEN ; 
 int INFINIPATH_E_RIBFLOW ; 
 int INFINIPATH_E_RIBLOSTLINK ; 
 int INFINIPATH_E_RICRC ; 
 int INFINIPATH_E_RLONGPKTLEN ; 
 int INFINIPATH_E_RMAXPKTLEN ; 
 int INFINIPATH_E_RMINPKTLEN ; 
 int INFINIPATH_E_RRCVEGRFULL ; 
 int INFINIPATH_E_RRCVHDRFULL ; 
 int INFINIPATH_E_RSHORTPKTLEN ; 
 int INFINIPATH_E_RUNEXPCHAR ; 
 int INFINIPATH_E_RUNSUPVL ; 
 int INFINIPATH_E_RVCRC ; 
 int INFINIPATH_E_SDMAERRS ; 
 int INFINIPATH_E_SDROPPEDDATAPKT ; 
 int INFINIPATH_E_SDROPPEDSMPPKT ; 
 int INFINIPATH_E_SENDSPECIALTRIGGER ; 
 int INFINIPATH_E_SMAXPKTLEN ; 
 int INFINIPATH_E_SMINPKTLEN ; 
 int INFINIPATH_E_SPIOARMLAUNCH ; 
 int INFINIPATH_E_SPKTLEN ; 
 int INFINIPATH_E_SUNDERRUN ; 
 int INFINIPATH_E_SUNEXPERRPKTNUM ; 
 int INFINIPATH_E_SUNSUPVL ; 
 int __IPATH_ERRPKTDBG ; 
 int /*<<< orphan*/  FUNC0 (struct ipath_devdata*,int,char*,size_t) ; 
 int ipath_debug ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

int FUNC2(struct ipath_devdata *dd, char *buf, size_t blen,
	ipath_err_t err)
{
	int iserr = 1;
	*buf = '\0';
	if (err & INFINIPATH_E_PKTERRS) {
		if (!(err & ~INFINIPATH_E_PKTERRS))
			iserr = 0; // if only packet errors.
		if (ipath_debug & __IPATH_ERRPKTDBG) {
			if (err & INFINIPATH_E_REBP)
				FUNC1(buf, "EBP ", blen);
			if (err & INFINIPATH_E_RVCRC)
				FUNC1(buf, "VCRC ", blen);
			if (err & INFINIPATH_E_RICRC) {
				FUNC1(buf, "CRC ", blen);
				// clear for check below, so only once
				err &= INFINIPATH_E_RICRC;
			}
			if (err & INFINIPATH_E_RSHORTPKTLEN)
				FUNC1(buf, "rshortpktlen ", blen);
			if (err & INFINIPATH_E_SDROPPEDDATAPKT)
				FUNC1(buf, "sdroppeddatapkt ", blen);
			if (err & INFINIPATH_E_SPKTLEN)
				FUNC1(buf, "spktlen ", blen);
		}
		if ((err & INFINIPATH_E_RICRC) &&
			!(err&(INFINIPATH_E_RVCRC|INFINIPATH_E_REBP)))
			FUNC1(buf, "CRC ", blen);
		if (!iserr)
			goto done;
	}
	if (err & INFINIPATH_E_RHDRLEN)
		FUNC1(buf, "rhdrlen ", blen);
	if (err & INFINIPATH_E_RBADTID)
		FUNC1(buf, "rbadtid ", blen);
	if (err & INFINIPATH_E_RBADVERSION)
		FUNC1(buf, "rbadversion ", blen);
	if (err & INFINIPATH_E_RHDR)
		FUNC1(buf, "rhdr ", blen);
	if (err & INFINIPATH_E_SENDSPECIALTRIGGER)
		FUNC1(buf, "sendspecialtrigger ", blen);
	if (err & INFINIPATH_E_RLONGPKTLEN)
		FUNC1(buf, "rlongpktlen ", blen);
	if (err & INFINIPATH_E_RMAXPKTLEN)
		FUNC1(buf, "rmaxpktlen ", blen);
	if (err & INFINIPATH_E_RMINPKTLEN)
		FUNC1(buf, "rminpktlen ", blen);
	if (err & INFINIPATH_E_SMINPKTLEN)
		FUNC1(buf, "sminpktlen ", blen);
	if (err & INFINIPATH_E_RFORMATERR)
		FUNC1(buf, "rformaterr ", blen);
	if (err & INFINIPATH_E_RUNSUPVL)
		FUNC1(buf, "runsupvl ", blen);
	if (err & INFINIPATH_E_RUNEXPCHAR)
		FUNC1(buf, "runexpchar ", blen);
	if (err & INFINIPATH_E_RIBFLOW)
		FUNC1(buf, "ribflow ", blen);
	if (err & INFINIPATH_E_SUNDERRUN)
		FUNC1(buf, "sunderrun ", blen);
	if (err & INFINIPATH_E_SPIOARMLAUNCH)
		FUNC1(buf, "spioarmlaunch ", blen);
	if (err & INFINIPATH_E_SUNEXPERRPKTNUM)
		FUNC1(buf, "sunexperrpktnum ", blen);
	if (err & INFINIPATH_E_SDROPPEDSMPPKT)
		FUNC1(buf, "sdroppedsmppkt ", blen);
	if (err & INFINIPATH_E_SMAXPKTLEN)
		FUNC1(buf, "smaxpktlen ", blen);
	if (err & INFINIPATH_E_SUNSUPVL)
		FUNC1(buf, "sunsupVL ", blen);
	if (err & INFINIPATH_E_INVALIDADDR)
		FUNC1(buf, "invalidaddr ", blen);
	if (err & INFINIPATH_E_RRCVEGRFULL)
		FUNC1(buf, "rcvegrfull ", blen);
	if (err & INFINIPATH_E_RRCVHDRFULL)
		FUNC1(buf, "rcvhdrfull ", blen);
	if (err & INFINIPATH_E_IBSTATUSCHANGED)
		FUNC1(buf, "ibcstatuschg ", blen);
	if (err & INFINIPATH_E_RIBLOSTLINK)
		FUNC1(buf, "riblostlink ", blen);
	if (err & INFINIPATH_E_HARDWARE)
		FUNC1(buf, "hardware ", blen);
	if (err & INFINIPATH_E_RESET)
		FUNC1(buf, "reset ", blen);
	if (err & INFINIPATH_E_SDMAERRS)
		FUNC0(dd, err, buf, blen);
	if (err & INFINIPATH_E_INVALIDEEPCMD)
		FUNC1(buf, "invalideepromcmd ", blen);
done:
	return iserr;
}