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
struct dst_state {int type_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_ERROR ; 
 int DST_TYPE_HAS_FW_1 ; 
 int DST_TYPE_HAS_FW_2 ; 
 int DST_TYPE_HAS_FW_3 ; 
 int DST_TYPE_HAS_NEWTUNE_2 ; 
 int DST_TYPE_HAS_SYMDIV ; 
 int DST_TYPE_HAS_TS188 ; 
 int DST_TYPE_HAS_TS204 ; 
 int DST_TYPE_HAS_VLF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static void FUNC1(struct dst_state *state)
{
	u32 type_flags = state->type_flags;

	FUNC0(verbose, DST_ERROR, 0, "DST type flags :");
	if (type_flags & DST_TYPE_HAS_TS188)
		FUNC0(verbose, DST_ERROR, 0, " 0x%x newtuner", DST_TYPE_HAS_TS188);
	if (type_flags & DST_TYPE_HAS_NEWTUNE_2)
		FUNC0(verbose, DST_ERROR, 0, " 0x%x newtuner 2", DST_TYPE_HAS_NEWTUNE_2);
	if (type_flags & DST_TYPE_HAS_TS204)
		FUNC0(verbose, DST_ERROR, 0, " 0x%x ts204", DST_TYPE_HAS_TS204);
	if (type_flags & DST_TYPE_HAS_VLF)
		FUNC0(verbose, DST_ERROR, 0, " 0x%x VLF", DST_TYPE_HAS_VLF);
	if (type_flags & DST_TYPE_HAS_SYMDIV)
		FUNC0(verbose, DST_ERROR, 0, " 0x%x symdiv", DST_TYPE_HAS_SYMDIV);
	if (type_flags & DST_TYPE_HAS_FW_1)
		FUNC0(verbose, DST_ERROR, 0, " 0x%x firmware version = 1", DST_TYPE_HAS_FW_1);
	if (type_flags & DST_TYPE_HAS_FW_2)
		FUNC0(verbose, DST_ERROR, 0, " 0x%x firmware version = 2", DST_TYPE_HAS_FW_2);
	if (type_flags & DST_TYPE_HAS_FW_3)
		FUNC0(verbose, DST_ERROR, 0, " 0x%x firmware version = 3", DST_TYPE_HAS_FW_3);
	FUNC0(verbose, DST_ERROR, 0, "\n");
}