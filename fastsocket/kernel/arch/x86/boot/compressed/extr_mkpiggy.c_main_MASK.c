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
typedef  long uint32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (long*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (long*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, char *argv[])
{
	uint32_t olen;
	long ilen;
	unsigned long offs;
	FILE *f;

	if (argc < 2) {
		FUNC2(stderr, "Usage: %s compressed_file\n", argv[0]);
		return 1;
	}

	/* Get the information for the compressed kernel image first */

	f = FUNC1(argv[1], "r");
	if (!f) {
		FUNC7(argv[1]);
		return 1;
	}


	if (FUNC4(f, -4L, SEEK_END)) {
		FUNC7(argv[1]);
	}
	FUNC3(&olen, sizeof olen, 1, f);
	ilen = FUNC5(f);
	olen = FUNC6(&olen);
	FUNC0(f);

	/*
	 * Now we have the input (compressed) and output (uncompressed)
	 * sizes, compute the necessary decompression offset...
	 */

	offs = (olen > ilen) ? olen - ilen : 0;
	offs += olen >> 12;	/* Add 8 bytes for each 32K block */
	offs += 32*1024 + 18;	/* Add 32K + 18 bytes slack */
	offs = (offs+4095) & ~4095; /* Round to a 4K boundary */

	FUNC8(".section \".rodata.compressed\",\"a\",@progbits\n");
	FUNC8(".globl z_input_len\n");
	FUNC8("z_input_len = %lu\n", ilen);
	FUNC8(".globl z_output_len\n");
	FUNC8("z_output_len = %lu\n", (unsigned long)olen);
	FUNC8(".globl z_extract_offset\n");
	FUNC8("z_extract_offset = 0x%lx\n", offs);
	/* z_extract_offset_negative allows simplification of head_32.S */
	FUNC8(".globl z_extract_offset_negative\n");
	FUNC8("z_extract_offset_negative = -0x%lx\n", offs);

	FUNC8(".globl input_data, input_data_end\n");
	FUNC8("input_data:\n");
	FUNC8(".incbin \"%s\"\n", argv[1]);
	FUNC8("input_data_end:\n");

	return 0;
}