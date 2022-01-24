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
typedef  int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  DST_CA_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC1 (int*,int) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static void FUNC2(u8 *check_string, int length)
{
	FUNC0(verbose, DST_CA_DEBUG, 1, " Computing string checksum.");
	FUNC0(verbose, DST_CA_DEBUG, 1, "  -> string length : 0x%02x", length);
	check_string[length] = FUNC1 (check_string, length);
	FUNC0(verbose, DST_CA_DEBUG, 1, "  -> checksum      : 0x%02x", check_string[length]);
}