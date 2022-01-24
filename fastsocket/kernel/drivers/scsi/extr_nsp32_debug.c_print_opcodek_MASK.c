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

/* Variables and functions */
#define  NOTEXT_GROUP 130 
#define  RESERVED_GROUP 129 
#define  VENDOR_GROUP 128 
 char*** commands ; 
 size_t FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,unsigned char) ; 
 char const* reserved ; 
 char const* unknown ; 
 char const* vendor ; 

__attribute__((used)) static void FUNC2(unsigned char opcode)
{
	const char **table = commands[ FUNC0(opcode) ];

	switch ((unsigned long) table) {
	case RESERVED_GROUP:
		FUNC1("%s[%02x] ", reserved, opcode); 
		break;
	case NOTEXT_GROUP:
		FUNC1("%s(notext)[%02x] ", unknown, opcode); 
		break;
	case VENDOR_GROUP:
		FUNC1("%s[%02x] ", vendor, opcode); 
		break;
	default:
		if (table[opcode & 0x1f] != unknown)
			FUNC1("%s[%02x] ", table[opcode & 0x1f], opcode);
		else
			FUNC1("%s[%02x] ", unknown, opcode);
		break;
	}
}