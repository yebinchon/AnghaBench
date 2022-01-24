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
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ATDONE ; 
 int ATNTARG ; 
 int BUSFREE ; 
 int CH1 ; 
 int CLRCH1 ; 
 int CLRSTCNT ; 
 scalar_t__ CURRENT_SC ; 
 int DFIFOEMP ; 
 int DFIFOFULL ; 
 int DMA ; 
 int /*<<< orphan*/  DMACNTRL0 ; 
 int DMADONE ; 
 int DMAEN ; 
 int /*<<< orphan*/  DMASTAT ; 
 int ENATNTARG ; 
 int ENAUTOATNI ; 
 int ENAUTOATNO ; 
 int ENAUTOATNP ; 
 int ENBUSFREE ; 
 int ENDMA ; 
 int ENDMADONE ; 
 int ENPHASECHG ; 
 int ENPHASEMIS ; 
 int ENREQINIT ; 
 int ENRESELI ; 
 int ENSCSIPERR ; 
 int ENSDONE ; 
 int ENSELDI ; 
 int ENSELDO ; 
 int ENSELI ; 
 int ENSELINGO ; 
 int ENSELO ; 
 int ENSELTIMO ; 
 int ENSPIORDY ; 
 int ENSWRAP ; 
 int FRERR ; 
 int FWERR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int INTEN ; 
 int /*<<< orphan*/  INTSTAT ; 
 int PHASECHG ; 
 int PHASEMIS ; 
 size_t PREVSTATE ; 
#define  P_CMD 133 
#define  P_DATAI 132 
#define  P_DATAO 131 
 int P_MASK ; 
#define  P_MSGI 130 
#define  P_MSGO 129 
#define  P_STATUS 128 
 int REQINIT ; 
 int RSTFIFO ; 
 int SCSIEN ; 
 int SCSIPERR ; 
 int SCSIRSTI ; 
 int SCSIRSTO ; 
 int /*<<< orphan*/  SCSISEQ ; 
 int /*<<< orphan*/  SCSISIG ; 
 int SDONE ; 
 int SELDI ; 
 int SELDO ; 
 int /*<<< orphan*/  SELID ; 
 int SELINGO ; 
 int SELTO ; 
 int SEMPTY ; 
 int SFCNT ; 
 int SFULL ; 
 int SIG_ACKI ; 
 int SIG_ATNI ; 
 int SIG_BSYI ; 
 int SIG_REQI ; 
 int SIG_SELI ; 
 int /*<<< orphan*/  SIMODE0 ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int SOFFSET ; 
 int SPIOEN ; 
 int SPIORDY ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  SSTAT0 ; 
 int /*<<< orphan*/  SSTAT1 ; 
 int /*<<< orphan*/  SSTAT2 ; 
 int /*<<< orphan*/  SSTAT3 ; 
 int /*<<< orphan*/  SSTAT4 ; 
 size_t STATE ; 
 int SWINT ; 
 int SWRAP ; 
 int /*<<< orphan*/  SXFRCTL0 ; 
 int SYNCERR ; 
 int TARGET ; 
 int TEMODEO ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int WORDRDY ; 
 int WRITE_READ ; 
 int _8BIT ; 
 TYPE_1__* states ; 

__attribute__((used)) static int FUNC4(struct Scsi_Host *shpnt, char *pos)
{
	char *start = pos;
	int s;

	FUNC2("\n%s: %s(%s) ", CURRENT_SC ? "on bus" : "waiting", states[STATE].name, states[PREVSTATE].name);

	s = FUNC0(SCSISEQ);
	FUNC2("SCSISEQ( ");
	if (s & TEMODEO)
		FUNC2("TARGET MODE ");
	if (s & ENSELO)
		FUNC2("SELO ");
	if (s & ENSELI)
		FUNC2("SELI ");
	if (s & ENRESELI)
		FUNC2("RESELI ");
	if (s & ENAUTOATNO)
		FUNC2("AUTOATNO ");
	if (s & ENAUTOATNI)
		FUNC2("AUTOATNI ");
	if (s & ENAUTOATNP)
		FUNC2("AUTOATNP ");
	if (s & SCSIRSTO)
		FUNC2("SCSIRSTO ");
	FUNC2(");");

	FUNC2(" SCSISIG(");
	s = FUNC0(SCSISIG);
	switch (s & P_MASK) {
	case P_DATAO:
		FUNC2("DATA OUT");
		break;
	case P_DATAI:
		FUNC2("DATA IN");
		break;
	case P_CMD:
		FUNC2("COMMAND");
		break;
	case P_STATUS:
		FUNC2("STATUS");
		break;
	case P_MSGO:
		FUNC2("MESSAGE OUT");
		break;
	case P_MSGI:
		FUNC2("MESSAGE IN");
		break;
	default:
		FUNC2("*invalid*");
		break;
	}

	FUNC2("); ");

	FUNC2("INTSTAT (%s); ", FUNC3(DMASTAT, INTSTAT) ? "hi" : "lo");

	FUNC2("SSTAT( ");
	s = FUNC0(SSTAT0);
	if (s & TARGET)
		FUNC2("TARGET ");
	if (s & SELDO)
		FUNC2("SELDO ");
	if (s & SELDI)
		FUNC2("SELDI ");
	if (s & SELINGO)
		FUNC2("SELINGO ");
	if (s & SWRAP)
		FUNC2("SWRAP ");
	if (s & SDONE)
		FUNC2("SDONE ");
	if (s & SPIORDY)
		FUNC2("SPIORDY ");
	if (s & DMADONE)
		FUNC2("DMADONE ");

	s = FUNC0(SSTAT1);
	if (s & SELTO)
		FUNC2("SELTO ");
	if (s & ATNTARG)
		FUNC2("ATNTARG ");
	if (s & SCSIRSTI)
		FUNC2("SCSIRSTI ");
	if (s & PHASEMIS)
		FUNC2("PHASEMIS ");
	if (s & BUSFREE)
		FUNC2("BUSFREE ");
	if (s & SCSIPERR)
		FUNC2("SCSIPERR ");
	if (s & PHASECHG)
		FUNC2("PHASECHG ");
	if (s & REQINIT)
		FUNC2("REQINIT ");
	FUNC2("); ");


	FUNC2("SSTAT( ");

	s = FUNC0(SSTAT0) & FUNC0(SIMODE0);

	if (s & TARGET)
		FUNC2("TARGET ");
	if (s & SELDO)
		FUNC2("SELDO ");
	if (s & SELDI)
		FUNC2("SELDI ");
	if (s & SELINGO)
		FUNC2("SELINGO ");
	if (s & SWRAP)
		FUNC2("SWRAP ");
	if (s & SDONE)
		FUNC2("SDONE ");
	if (s & SPIORDY)
		FUNC2("SPIORDY ");
	if (s & DMADONE)
		FUNC2("DMADONE ");

	s = FUNC0(SSTAT1) & FUNC0(SIMODE1);

	if (s & SELTO)
		FUNC2("SELTO ");
	if (s & ATNTARG)
		FUNC2("ATNTARG ");
	if (s & SCSIRSTI)
		FUNC2("SCSIRSTI ");
	if (s & PHASEMIS)
		FUNC2("PHASEMIS ");
	if (s & BUSFREE)
		FUNC2("BUSFREE ");
	if (s & SCSIPERR)
		FUNC2("SCSIPERR ");
	if (s & PHASECHG)
		FUNC2("PHASECHG ");
	if (s & REQINIT)
		FUNC2("REQINIT ");
	FUNC2("); ");

	FUNC2("SXFRCTL0( ");

	s = FUNC0(SXFRCTL0);
	if (s & SCSIEN)
		FUNC2("SCSIEN ");
	if (s & DMAEN)
		FUNC2("DMAEN ");
	if (s & CH1)
		FUNC2("CH1 ");
	if (s & CLRSTCNT)
		FUNC2("CLRSTCNT ");
	if (s & SPIOEN)
		FUNC2("SPIOEN ");
	if (s & CLRCH1)
		FUNC2("CLRCH1 ");
	FUNC2("); ");

	FUNC2("SIGNAL( ");

	s = FUNC0(SCSISIG);
	if (s & SIG_ATNI)
		FUNC2("ATNI ");
	if (s & SIG_SELI)
		FUNC2("SELI ");
	if (s & SIG_BSYI)
		FUNC2("BSYI ");
	if (s & SIG_REQI)
		FUNC2("REQI ");
	if (s & SIG_ACKI)
		FUNC2("ACKI ");
	FUNC2("); ");

	FUNC2("SELID(%02x), ", FUNC0(SELID));

	FUNC2("STCNT(%d), ", FUNC1());

	FUNC2("SSTAT2( ");

	s = FUNC0(SSTAT2);
	if (s & SOFFSET)
		FUNC2("SOFFSET ");
	if (s & SEMPTY)
		FUNC2("SEMPTY ");
	if (s & SFULL)
		FUNC2("SFULL ");
	FUNC2("); SFCNT (%d); ", s & (SFULL | SFCNT));

	s = FUNC0(SSTAT3);
	FUNC2("SCSICNT (%d), OFFCNT(%d), ", (s & 0xf0) >> 4, s & 0x0f);

	FUNC2("SSTAT4( ");
	s = FUNC0(SSTAT4);
	if (s & SYNCERR)
		FUNC2("SYNCERR ");
	if (s & FWERR)
		FUNC2("FWERR ");
	if (s & FRERR)
		FUNC2("FRERR ");
	FUNC2("); ");

	FUNC2("DMACNTRL0( ");
	s = FUNC0(DMACNTRL0);
	FUNC2("%s ", s & _8BIT ? "8BIT" : "16BIT");
	FUNC2("%s ", s & DMA ? "DMA" : "PIO");
	FUNC2("%s ", s & WRITE_READ ? "WRITE" : "READ");
	if (s & ENDMA)
		FUNC2("ENDMA ");
	if (s & INTEN)
		FUNC2("INTEN ");
	if (s & RSTFIFO)
		FUNC2("RSTFIFO ");
	if (s & SWINT)
		FUNC2("SWINT ");
	FUNC2("); ");

	FUNC2("DMASTAT( ");
	s = FUNC0(DMASTAT);
	if (s & ATDONE)
		FUNC2("ATDONE ");
	if (s & WORDRDY)
		FUNC2("WORDRDY ");
	if (s & DFIFOFULL)
		FUNC2("DFIFOFULL ");
	if (s & DFIFOEMP)
		FUNC2("DFIFOEMP ");
	FUNC2(")\n");

	FUNC2("enabled interrupts( ");

	s = FUNC0(SIMODE0);
	if (s & ENSELDO)
		FUNC2("ENSELDO ");
	if (s & ENSELDI)
		FUNC2("ENSELDI ");
	if (s & ENSELINGO)
		FUNC2("ENSELINGO ");
	if (s & ENSWRAP)
		FUNC2("ENSWRAP ");
	if (s & ENSDONE)
		FUNC2("ENSDONE ");
	if (s & ENSPIORDY)
		FUNC2("ENSPIORDY ");
	if (s & ENDMADONE)
		FUNC2("ENDMADONE ");

	s = FUNC0(SIMODE1);
	if (s & ENSELTIMO)
		FUNC2("ENSELTIMO ");
	if (s & ENATNTARG)
		FUNC2("ENATNTARG ");
	if (s & ENPHASEMIS)
		FUNC2("ENPHASEMIS ");
	if (s & ENBUSFREE)
		FUNC2("ENBUSFREE ");
	if (s & ENSCSIPERR)
		FUNC2("ENSCSIPERR ");
	if (s & ENPHASECHG)
		FUNC2("ENPHASECHG ");
	if (s & ENREQINIT)
		FUNC2("ENREQINIT ");
	FUNC2(")\n");

	return (pos - start);
}