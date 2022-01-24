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

/* Variables and functions */
 int INFINIPATH_RHF_H_IBERR ; 
 int INFINIPATH_RHF_H_ICRCERR ; 
 int INFINIPATH_RHF_H_IHDRERR ; 
 int INFINIPATH_RHF_H_LENERR ; 
 int INFINIPATH_RHF_H_MKERR ; 
 int INFINIPATH_RHF_H_MTUERR ; 
 int INFINIPATH_RHF_H_PARITYERR ; 
 int INFINIPATH_RHF_H_TIDERR ; 
 int INFINIPATH_RHF_H_VCRCERR ; 
 int INFINIPATH_RHF_L_SWA ; 
 int INFINIPATH_RHF_L_SWB ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 

__attribute__((used)) static void FUNC1(u32 err, char *msg, size_t len)
{
	/* if no errors, and so don't need to check what's first */
	*msg = '\0';

	if (err & INFINIPATH_RHF_H_ICRCERR)
		FUNC0(msg, "icrcerr ", len);
	if (err & INFINIPATH_RHF_H_VCRCERR)
		FUNC0(msg, "vcrcerr ", len);
	if (err & INFINIPATH_RHF_H_PARITYERR)
		FUNC0(msg, "parityerr ", len);
	if (err & INFINIPATH_RHF_H_LENERR)
		FUNC0(msg, "lenerr ", len);
	if (err & INFINIPATH_RHF_H_MTUERR)
		FUNC0(msg, "mtuerr ", len);
	if (err & INFINIPATH_RHF_H_IHDRERR)
		/* infinipath hdr checksum error */
		FUNC0(msg, "ipathhdrerr ", len);
	if (err & INFINIPATH_RHF_H_TIDERR)
		FUNC0(msg, "tiderr ", len);
	if (err & INFINIPATH_RHF_H_MKERR)
		/* bad port, offset, etc. */
		FUNC0(msg, "invalid ipathhdr ", len);
	if (err & INFINIPATH_RHF_H_IBERR)
		FUNC0(msg, "iberr ", len);
	if (err & INFINIPATH_RHF_L_SWA)
		FUNC0(msg, "swA ", len);
	if (err & INFINIPATH_RHF_L_SWB)
		FUNC0(msg, "swB ", len);
}