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
typedef  unsigned int u_char ;

/* Variables and functions */
 unsigned int GCS_2 ; 
 unsigned int PO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 

__attribute__((used)) static inline void
FUNC1(unsigned int ale, unsigned long adr, u_char off, u_char data)
{
	unsigned int *po = (unsigned int *) adr;	/* Postoffice */
	*po = (GCS_2 | PO_WRITE | off);
	FUNC0(po);
	*po = (ale | PO_WRITE | data);
	FUNC0(po);
}