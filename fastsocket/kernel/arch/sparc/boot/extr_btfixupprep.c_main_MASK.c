#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long offset; char* sect; int frel; TYPE_2__* f; struct TYPE_6__* next; } ;
typedef  TYPE_1__ btfixuprel ;
struct TYPE_7__ {int setinitval; unsigned int initval; char* initvalstr; char* name; int type; TYPE_1__* rel; } ;
typedef  TYPE_2__ btfixup ;

/* Variables and functions */
 TYPE_2__* array ; 
 char* buffer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (char,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int last ; 
 TYPE_2__* lastf ; 
 int lastfoffset ; 
 int lastfrelno ; 
 void* FUNC5 (int) ; 
 int mode ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int rellen ; 
 char* relrec ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*,char*,int) ; 
 char* FUNC14 (char*,char*) ; 
 void* FUNC15 (char*,char**,int) ; 
 int symlen ; 
 char* symtab ; 

int FUNC16(int argc,char **argv)
{
	char *p, *q;
	char *sect;
	int i, j, k;
	unsigned int initval;
	int shift;
	btfixup *f;
	btfixuprel *r, **rr;
	unsigned long offset;
	char *initvalstr;

	symlen = FUNC12(symtab);
	while (FUNC2 (buffer, 1024, stdin) != NULL)
		if (!FUNC13 (buffer, symtab, symlen))
			goto main0;
	FUNC1();
main0:
	rellen = FUNC12(relrec);
	while (FUNC2 (buffer, 1024, stdin) != NULL)
		if (!FUNC13 (buffer, relrec, rellen))
			goto main1;
	FUNC1();
main1:
	sect = FUNC5(FUNC12 (buffer + rellen) + 1);
	if (!sect) FUNC1();
	FUNC10 (sect, buffer + rellen);
	p = FUNC8 (sect, ']');
	if (!p) FUNC1();
	*p = 0;
	if (FUNC2 (buffer, 1024, stdin) == NULL)
		FUNC1();
	while (FUNC2 (buffer, 1024, stdin) != NULL) {
		int nbase;
		if (!FUNC13 (buffer, relrec, rellen))
			goto main1;
		if (mode == 0)
			FUNC7 (buffer);
		p = FUNC8 (buffer, '\n');
		if (p) *p = 0;
		if (FUNC12 (buffer) < 22+mode)
			continue;
		if (FUNC13 (buffer + mode, " R_SPARC_", 9))
			continue;
		nbase = 27 - 8 + mode;
		if (buffer[nbase] != '_' || buffer[nbase+1] != '_' || buffer[nbase+2] != '_')
			continue;
		switch (buffer[nbase+3]) {
			case 'f':	/* CALL */
			case 'b':	/* BLACKBOX */
			case 's':	/* SIMM13 */
			case 'a':	/* HALF */
			case 'h':	/* SETHI */
			case 'i':	/* INT */
				break;
			default:
				continue;
		}
		p = FUNC8 (buffer + nbase+5, '+');
		if (p) *p = 0;
		shift = nbase + 5;
		if (buffer[nbase+4] == 's' && buffer[nbase+5] == '_') {
			shift = nbase + 6;
			if (FUNC9 (sect, ".init.text")) {
				FUNC4(stderr,
				    "Wrong use of '%s' BTFIXUPSET in '%s' section.\n"
				    "BTFIXUPSET_CALL can be used only in"
				    " __init sections\n",
				    buffer + shift, sect);
				FUNC0(1);
			}
		} else if (buffer[nbase+4] != '_')
			continue;
		if (!FUNC9 (sect, ".text.exit"))
			continue;
		if (FUNC9 (sect, ".text") &&
		    FUNC9 (sect, ".init.text") &&
		    FUNC9 (sect, ".fixup") &&
		    (FUNC9 (sect, "__ksymtab") || buffer[nbase+3] != 'f')) {
			if (buffer[nbase+3] == 'f')
				FUNC4(stderr,
				    "Wrong use of '%s' in '%s' section.\n"
				    " It can be used only in .text, .init.text,"
				    " .fixup and __ksymtab\n",
				    buffer + shift, sect);
			else
				FUNC4(stderr,
				    "Wrong use of '%s' in '%s' section.\n"
				    " It can be only used in .text, .init.text,"
				    " and .fixup\n", buffer + shift, sect);
			FUNC0(1);
		}
		p = FUNC14 (buffer + shift, "__btset_");
		if (p && buffer[nbase+4] == 's') {
			FUNC4(stderr, "__btset_ in BTFIXUP name can only be used when defining the variable, not for setting\n%s\n", buffer);
			FUNC0(1);
		}
		initval = 0;
		initvalstr = NULL;
		if (p) {
			if (p[8] != '0' || p[9] != 'x') {
				FUNC4(stderr, "Pre-initialized values can be only initialized with hexadecimal constants starting 0x\n%s\n", buffer);
				FUNC0(1);
			}
			initval = FUNC15(p + 10, &q, 16);
			if (*q || !initval) {
				FUNC4(stderr, "Pre-initialized values can be only in the form name__btset_0xXXXXXXXX where X are hex digits.\nThey cannot be name__btset_0x00000000 though. Use BTFIXUPDEF_XX instead of BTFIXUPDEF_XX_INIT then.\n%s\n", buffer);
				FUNC0(1);
			}
			initvalstr = p + 10;
			*p = 0;
		}
		f = FUNC3(buffer[nbase+3], buffer + shift);
		if (buffer[nbase+4] == 's')
			continue;
		switch (buffer[nbase+3]) {
		case 'f':
			if (initval) {
				FUNC4(stderr, "Cannot use pre-initalized fixups for calls\n%s\n", buffer);
				FUNC0(1);
			}
			if (!FUNC9 (sect, "__ksymtab")) {
				if (FUNC13 (buffer + mode+9, "32        ", 10)) {
					FUNC4(stderr, "BTFIXUP_CALL in EXPORT_SYMBOL results in relocation other than R_SPARC_32\n\%s\n", buffer);
					FUNC0(1);
				}
			} else if (FUNC13 (buffer + mode+9, "WDISP30   ", 10) &&
				   FUNC13 (buffer + mode+9, "HI22      ", 10) &&
				   FUNC13 (buffer + mode+9, "LO10      ", 10)) {
				FUNC4(stderr, "BTFIXUP_CALL results in relocation other than R_SPARC_WDISP30, R_SPARC_HI22 or R_SPARC_LO10\n%s\n", buffer);
				FUNC0(1);
			}
			break;
		case 'b':
			if (initval) {
				FUNC4(stderr, "Cannot use pre-initialized fixups for blackboxes\n%s\n", buffer);
				FUNC0(1);
			}
			if (FUNC13 (buffer + mode+9, "HI22      ", 10)) {
				FUNC4(stderr, "BTFIXUP_BLACKBOX results in relocation other than R_SPARC_HI22\n%s\n", buffer);
				FUNC0(1);
			}
			break;
		case 's':
			if (initval + 0x1000 >= 0x2000) {
				FUNC4(stderr, "Wrong initializer for SIMM13. Has to be from $fffff000 to $00000fff\n%s\n", buffer);
				FUNC0(1);
			}
			if (FUNC13 (buffer + mode+9, "13        ", 10)) {
				FUNC4(stderr, "BTFIXUP_SIMM13 results in relocation other than R_SPARC_13\n%s\n", buffer);
				FUNC0(1);
			}
			break;
		case 'a':
			if (initval + 0x1000 >= 0x2000 && (initval & 0x3ff)) {
				FUNC4(stderr, "Wrong initializer for HALF.\n%s\n", buffer);
				FUNC0(1);
			}
			if (FUNC13 (buffer + mode+9, "13        ", 10)) {
				FUNC4(stderr, "BTFIXUP_HALF results in relocation other than R_SPARC_13\n%s\n", buffer);
				FUNC0(1);
			}
			break;
		case 'h':
			if (initval & 0x3ff) {
				FUNC4(stderr, "Wrong initializer for SETHI. Cannot have set low 10 bits\n%s\n", buffer);
				FUNC0(1);
			}
			if (FUNC13 (buffer + mode+9, "HI22      ", 10)) {
				FUNC4(stderr, "BTFIXUP_SETHI results in relocation other than R_SPARC_HI22\n%s\n", buffer);
				FUNC0(1);
			}
			break;
		case 'i':
			if (initval) {
				FUNC4(stderr, "Cannot use pre-initalized fixups for INT\n%s\n", buffer);
				FUNC0(1);
			}
			if (FUNC13 (buffer + mode+9, "HI22      ", 10) && FUNC13 (buffer + mode+9, "LO10      ", 10)) {
				FUNC4(stderr, "BTFIXUP_INT results in relocation other than R_SPARC_HI22 and R_SPARC_LO10\n%s\n", buffer);
				FUNC0(1);
			}
			break;
		}
		if (!f->setinitval) {
			f->initval = initval;
			if (initvalstr) {
				f->initvalstr = FUNC11(initvalstr);
				if (!f->initvalstr) FUNC1();
			}
			f->setinitval = 1;
		} else if (f->initval != initval) {
			FUNC4(stderr, "Btfixup %s previously used with initializer %s which doesn't match with current initializer\n%s\n",
					f->name, f->initvalstr ? : "0x00000000", buffer);
			FUNC0(1);
		} else if (initval && FUNC9(f->initvalstr, initvalstr)) {
			FUNC4(stderr, "Btfixup %s previously used with initializer %s which doesn't match with current initializer.\n"
					"Initializers have to match literally as well.\n%s\n",
					f->name, f->initvalstr, buffer);
			FUNC0(1);
		}
		offset = FUNC15(buffer, &q, 16);
		if (q != buffer + mode || (!offset && (mode == 8 ? FUNC13 (buffer, "00000000 ", 9) : FUNC13 (buffer, "0000000000000000 ", 17)))) {
			FUNC4(stderr, "Malformed relocation address in\n%s\n", buffer);
			FUNC0(1);
		}
		for (k = 0, r = f->rel, rr = &f->rel; r; rr = &r->next, r = r->next, k++)
			if (r->offset == offset && !FUNC9(r->sect, sect)) {
				FUNC4(stderr, "Ugh. One address has two relocation records\n");
				FUNC0(1);
			}
		*rr = FUNC5(sizeof(btfixuprel));
		if (!*rr) FUNC1();
		(*rr)->offset = offset;
		(*rr)->f = NULL;
		if (buffer[nbase+3] == 'f') {
			lastf = f;
			lastfoffset = offset;
			lastfrelno = k;
		} else if (lastfoffset + 4 == offset) {
			(*rr)->f = lastf;
			(*rr)->frel = lastfrelno;
		}
		(*rr)->sect = sect;
		(*rr)->next = NULL;
	}
	FUNC6("! Generated by btfixupprep. Do not edit.\n\n");
	FUNC6("\t.section\t\".data.init\",#alloc,#write\n\t.align\t4\n\n");
	FUNC6("\t.global\t___btfixup_start\n___btfixup_start:\n\n");
	for (i = 0; i < last; i++) {
		f = array + i;
		FUNC6("\t.global\t___%cs_%s\n", f->type, f->name);
		if (f->type == 'f')
			FUNC6("___%cs_%s:\n\t.word 0x%08x,0,0,", f->type, f->name, f->type << 24);
		else
			FUNC6("___%cs_%s:\n\t.word 0x%08x,0,", f->type, f->name, f->type << 24);
		for (j = 0, r = f->rel; r != NULL; j++, r = r->next);
		if (j)
			FUNC6("%d\n\t.word\t", j * 2);
		else
			FUNC6("0\n");
		for (r = f->rel, j--; r != NULL; j--, r = r->next) {
			if (!FUNC9 (r->sect, ".text"))
				FUNC6 ("_stext+0x%08lx", r->offset);
			else if (!FUNC9 (r->sect, ".init.text"))
				FUNC6 ("__init_begin+0x%08lx", r->offset);
			else if (!FUNC9 (r->sect, "__ksymtab"))
				FUNC6 ("__start___ksymtab+0x%08lx", r->offset);
			else if (!FUNC9 (r->sect, ".fixup"))
				FUNC6 ("__start___fixup+0x%08lx", r->offset);
			else
				FUNC1();
			if (f->type == 'f' || !r->f)
				FUNC6 (",0");
			else
				FUNC6 (",___fs_%s+0x%08x", r->f->name, (4 + r->frel*2)*4 + 4);
			if (j) FUNC6 (",");
			else FUNC6 ("\n");
		}
		FUNC6("\n");
	}
	FUNC6("\n\t.global\t___btfixup_end\n___btfixup_end:\n");
	FUNC6("\n\n! Define undefined references\n\n");
	for (i = 0; i < last; i++) {
		f = array + i;
		if (f->type == 'f') {
			FUNC6("\t.global\t___f_%s\n", f->name);
			FUNC6("___f_%s:\n", f->name);
		}
	}
	FUNC6("\tretl\n\t nop\n\n");
	for (i = 0; i < last; i++) {
		f = array + i;
		if (f->type != 'f') {
			if (!f->initval) {
				FUNC6("\t.global\t___%c_%s\n", f->type, f->name);
				FUNC6("___%c_%s = 0\n", f->type, f->name);
			} else {
				FUNC6("\t.global\t___%c_%s__btset_0x%s\n", f->type, f->name, f->initvalstr);
				FUNC6("___%c_%s__btset_0x%s = 0x%08x\n", f->type, f->name, f->initvalstr, f->initval);
			}
		}
	}
	FUNC6("\n\n");
    	FUNC0(0);
}