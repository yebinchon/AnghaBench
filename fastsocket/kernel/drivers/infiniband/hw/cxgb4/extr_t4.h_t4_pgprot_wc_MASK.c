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
typedef  int pgprot_t ;

/* Variables and functions */
 scalar_t__ _PAGE_GUARDED ; 
 int _PAGE_NO_CACHE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static inline pgprot_t FUNC4(pgprot_t prot)
{
#if defined(__i386__) || defined(__x86_64__)
	return FUNC3(prot);
#elif defined(CONFIG_PPC64)
	return __pgprot((pgprot_val(prot) | _PAGE_NO_CACHE) &
			~(pgprot_t)_PAGE_GUARDED);
#else
	return pgprot_noncached(prot);
#endif
}