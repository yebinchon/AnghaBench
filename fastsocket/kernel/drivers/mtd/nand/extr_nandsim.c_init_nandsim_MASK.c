#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ totsz; unsigned long long pgsz; unsigned long long oobsz; int secsz; unsigned long long pgszoob; unsigned long long pgnum; unsigned long long secshift; unsigned long long pgshift; unsigned long long oobshift; int pgsec; int secszoob; int pgaddrbytes; int secaddrbytes; scalar_t__ totszoob; } ;
struct TYPE_5__ {int /*<<< orphan*/  byte; } ;
struct nandsim {int busw; int options; int nbparts; TYPE_2__ geom; TYPE_1__ buf; TYPE_4__* partitions; } ;
struct nand_chip {int options; unsigned long long page_shift; scalar_t__ chip_delay; scalar_t__ priv; } ;
struct mtd_info {scalar_t__ size; unsigned long long writesize; unsigned long long oobsize; int erasesize; scalar_t__ priv; } ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ offset; void* name; } ;
struct TYPE_7__ {scalar_t__ id; int options; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NAND_BUSWIDTH_16 ; 
 int NAND_NO_AUTOINCR ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct nandsim*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int OPT_AUTOINCR ; 
 int OPT_PAGE2048 ; 
 int OPT_PAGE256 ; 
 int OPT_PAGE512 ; 
 int OPT_PAGE512_8BIT ; 
 int OPT_SMALLPAGE ; 
 int FUNC4 (struct nandsim*) ; 
 unsigned long long FUNC5 (scalar_t__,unsigned long long) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct nandsim*) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__* nand_flash_ids ; 
 scalar_t__* parts ; 
 int parts_num ; 
 int /*<<< orphan*/  FUNC11 (char*,unsigned long long) ; 
 scalar_t__ second_id_byte ; 

__attribute__((used)) static int FUNC12(struct mtd_info *mtd)
{
	struct nand_chip *chip = (struct nand_chip *)mtd->priv;
	struct nandsim   *ns   = (struct nandsim *)(chip->priv);
	int i, ret = 0;
	uint64_t remains;
	uint64_t next_offset;

	if (FUNC2(ns)) {
		FUNC1("init_nandsim: nandsim is already initialized\n");
		return -EIO;
	}

	/* Force mtd to not do delays */
	chip->chip_delay = 0;

	/* Initialize the NAND flash parameters */
	ns->busw = chip->options & NAND_BUSWIDTH_16 ? 16 : 8;
	ns->geom.totsz    = mtd->size;
	ns->geom.pgsz     = mtd->writesize;
	ns->geom.oobsz    = mtd->oobsize;
	ns->geom.secsz    = mtd->erasesize;
	ns->geom.pgszoob  = ns->geom.pgsz + ns->geom.oobsz;
	ns->geom.pgnum    = FUNC5(ns->geom.totsz, ns->geom.pgsz);
	ns->geom.totszoob = ns->geom.totsz + (uint64_t)ns->geom.pgnum * ns->geom.oobsz;
	ns->geom.secshift = FUNC6(ns->geom.secsz) - 1;
	ns->geom.pgshift  = chip->page_shift;
	ns->geom.oobshift = FUNC6(ns->geom.oobsz) - 1;
	ns->geom.pgsec    = ns->geom.secsz / ns->geom.pgsz;
	ns->geom.secszoob = ns->geom.secsz + ns->geom.oobsz * ns->geom.pgsec;
	ns->options = 0;

	if (ns->geom.pgsz == 256) {
		ns->options |= OPT_PAGE256;
	}
	else if (ns->geom.pgsz == 512) {
		ns->options |= (OPT_PAGE512 | OPT_AUTOINCR);
		if (ns->busw == 8)
			ns->options |= OPT_PAGE512_8BIT;
	} else if (ns->geom.pgsz == 2048) {
		ns->options |= OPT_PAGE2048;
	} else {
		FUNC1("init_nandsim: unknown page size %u\n", ns->geom.pgsz);
		return -EIO;
	}

	if (ns->options & OPT_SMALLPAGE) {
		if (ns->geom.totsz <= (32 << 20)) {
			ns->geom.pgaddrbytes  = 3;
			ns->geom.secaddrbytes = 2;
		} else {
			ns->geom.pgaddrbytes  = 4;
			ns->geom.secaddrbytes = 3;
		}
	} else {
		if (ns->geom.totsz <= (128 << 20)) {
			ns->geom.pgaddrbytes  = 4;
			ns->geom.secaddrbytes = 2;
		} else {
			ns->geom.pgaddrbytes  = 5;
			ns->geom.secaddrbytes = 3;
		}
	}

	/* Fill the partition_info structure */
	if (parts_num > FUNC0(ns->partitions)) {
		FUNC1("too many partitions.\n");
		ret = -EINVAL;
		goto error;
	}
	remains = ns->geom.totsz;
	next_offset = 0;
	for (i = 0; i < parts_num; ++i) {
		uint64_t part_sz = (uint64_t)parts[i] * ns->geom.secsz;

		if (!part_sz || part_sz > remains) {
			FUNC1("bad partition size.\n");
			ret = -EINVAL;
			goto error;
		}
		ns->partitions[i].name   = FUNC8(i);
		ns->partitions[i].offset = next_offset;
		ns->partitions[i].size   = part_sz;
		next_offset += ns->partitions[i].size;
		remains -= ns->partitions[i].size;
	}
	ns->nbparts = parts_num;
	if (remains) {
		if (parts_num + 1 > FUNC0(ns->partitions)) {
			FUNC1("too many partitions.\n");
			ret = -EINVAL;
			goto error;
		}
		ns->partitions[i].name   = FUNC8(i);
		ns->partitions[i].offset = next_offset;
		ns->partitions[i].size   = remains;
		ns->nbparts += 1;
	}

	/* Detect how many ID bytes the NAND chip outputs */
        for (i = 0; nand_flash_ids[i].name != NULL; i++) {
                if (second_id_byte != nand_flash_ids[i].id)
                        continue;
		if (!(nand_flash_ids[i].options & NAND_NO_AUTOINCR))
			ns->options |= OPT_AUTOINCR;
	}

	if (ns->busw == 16)
		FUNC3("16-bit flashes support wasn't tested\n");

	FUNC11("flash size: %llu MiB\n",
			(unsigned long long)ns->geom.totsz >> 20);
	FUNC11("page size: %u bytes\n",         ns->geom.pgsz);
	FUNC11("OOB area size: %u bytes\n",     ns->geom.oobsz);
	FUNC11("sector size: %u KiB\n",         ns->geom.secsz >> 10);
	FUNC11("pages number: %u\n",            ns->geom.pgnum);
	FUNC11("pages per sector: %u\n",        ns->geom.pgsec);
	FUNC11("bus width: %u\n",               ns->busw);
	FUNC11("bits in sector size: %u\n",     ns->geom.secshift);
	FUNC11("bits in page size: %u\n",       ns->geom.pgshift);
	FUNC11("bits in OOB size: %u\n",	ns->geom.oobshift);
	FUNC11("flash size with OOB: %llu KiB\n",
			(unsigned long long)ns->geom.totszoob >> 10);
	FUNC11("page address bytes: %u\n",      ns->geom.pgaddrbytes);
	FUNC11("sector address bytes: %u\n",    ns->geom.secaddrbytes);
	FUNC11("options: %#x\n",                ns->options);

	if ((ret = FUNC4(ns)) != 0)
		goto error;

	/* Allocate / initialize the internal buffer */
	ns->buf.byte = FUNC9(ns->geom.pgszoob, GFP_KERNEL);
	if (!ns->buf.byte) {
		FUNC1("init_nandsim: unable to allocate %u bytes for the internal buffer\n",
			ns->geom.pgszoob);
		ret = -ENOMEM;
		goto error;
	}
	FUNC10(ns->buf.byte, 0xFF, ns->geom.pgszoob);

	return 0;

error:
	FUNC7(ns);

	return ret;
}