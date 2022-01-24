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
struct va_format {int /*<<< orphan*/ * va; int /*<<< orphan*/  fmt; } ;
struct printf_spec {int field_width; int base; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  SMALL ; 
 int /*<<< orphan*/  ZEROPAD ; 
 int /*<<< orphan*/  current ; 
 void* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (char*,char*,void*,struct printf_spec,char const*) ; 
 char* FUNC6 (char*,char*,void*,struct printf_spec,char const*) ; 
 int kptr_restrict ; 
 char* FUNC7 (char*,char*,void*,struct printf_spec,char const*) ; 
 char* FUNC8 (char*,char*,unsigned long,struct printf_spec) ; 
 char* FUNC9 (char*,char*,void*,struct printf_spec,char const*) ; 
 char* FUNC10 (char*,char*,char*,struct printf_spec) ; 
 char* FUNC11 (char*,char*,void*,struct printf_spec,char const) ; 
 char* FUNC12 (char*,char*,void*,struct printf_spec,char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC14(const char *fmt, char *buf, char *end, void *ptr,
			struct printf_spec spec)
{
	if (!ptr && *fmt != 'K')
		return FUNC10(buf, end, "(null)", spec);

	switch (*fmt) {
	case 'F':
	case 'f':
		ptr = FUNC0(ptr);
		/* Fallthrough */
	case 'S':
	case 's':
		return FUNC11(buf, end, ptr, spec, *fmt);
	case 'R':
	case 'r':
		return FUNC9(buf, end, ptr, spec, fmt);
	case 'M':			/* Colon separated: 00:01:02:03:04:05 */
	case 'm':			/* Contiguous: 000102030405 */
		return FUNC7(buf, end, ptr, spec, fmt);
	case 'I':			/* Formatted IP supported
					 * 4:	1.2.3.4
					 * 6:	0001:0203:...:0708
					 * 6c:	1::708 or 1::1.2.3.4
					 */
	case 'i':			/* Contiguous:
					 * 4:	001.002.003.004
					 * 6:   000102...0f
					 */
		switch (fmt[1]) {
		case '6':
			return FUNC6(buf, end, ptr, spec, fmt);
		case '4':
			return FUNC5(buf, end, ptr, spec, fmt);
		}
		break;
	case 'K':
		/*
		 * %pK cannot be used in IRQ context because its test
		 * for CAP_SYS_ADMIN would be meaningless.
		 */
		if (FUNC2() || FUNC4() || FUNC3()) {
			if (spec.field_width == -1)
				spec.field_width = 2 * sizeof(void *);
			return FUNC10(buf, end, "pK-error", spec);
		} else if ((kptr_restrict == 0) ||
			 (kptr_restrict == 1 &&
			  FUNC1(current, CAP_SYS_ADMIN)))
			break;

		if (spec.field_width == -1) {
			spec.field_width = 2 * sizeof(void *);
			spec.flags |= ZEROPAD;
		}
		return FUNC8(buf, end, 0, spec);
	case 'U':
		return FUNC12(buf, end, ptr, spec, fmt);
	case 'V':
		return buf + FUNC13(buf, end - buf,
				       ((struct va_format *)ptr)->fmt,
				       *(((struct va_format *)ptr)->va));
	}
	spec.flags |= SMALL;
	if (spec.field_width == -1) {
		spec.field_width = 2*sizeof(void *);
		spec.flags |= ZEROPAD;
	}
	spec.base = 16;

	return FUNC8(buf, end, (unsigned long) ptr, spec);
}