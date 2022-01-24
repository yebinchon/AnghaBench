#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nouveau_bios {char* data; int /*<<< orphan*/  size; } ;
struct methods {char* member_0; int member_2; char* desc; int score; int rw; char* data; int /*<<< orphan*/  size; int /*<<< orphan*/  (* shadow ) (struct nouveau_bios*) ;int /*<<< orphan*/ * member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_1; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__* pdev; int /*<<< orphan*/  cfgopt; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nouveau_bios*,int) ; 
 int /*<<< orphan*/  nouveau_bios_shadow_acpi ; 
 int /*<<< orphan*/  nouveau_bios_shadow_of ; 
 int /*<<< orphan*/  nouveau_bios_shadow_pci ; 
 int /*<<< orphan*/  nouveau_bios_shadow_pramin ; 
 int /*<<< orphan*/  nouveau_bios_shadow_prom ; 
 char* FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 
 TYPE_2__* FUNC5 (struct nouveau_bios*) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_bios*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_bios*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int FUNC9 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_bios*) ; 
 int /*<<< orphan*/  FUNC12 (struct nouveau_bios*) ; 

__attribute__((used)) static int
FUNC13(struct nouveau_bios *bios)
{
	struct methods shadow_methods[] = {
#if defined(__powerpc__)
		{ "OpenFirmware", nouveau_bios_shadow_of, true, 0, 0, NULL },
#endif
		{ "PRAMIN", nouveau_bios_shadow_pramin, true, 0, 0, NULL },
		{ "PROM", nouveau_bios_shadow_prom, false, 0, 0, NULL },
		{ "ACPI", nouveau_bios_shadow_acpi, true, 0, 0, NULL },
		{ "PCIROM", nouveau_bios_shadow_pci, true, 0, 0, NULL },
		{}
	};
	struct methods *mthd, *best;
	const struct firmware *fw;
	const char *optarg;
	int optlen, ret;
	char *source;

	optarg = FUNC4(FUNC5(bios)->cfgopt, "NvBios", &optlen);
	source = optarg ? FUNC2(optarg, optlen, GFP_KERNEL) : NULL;
	if (source) {
		/* try to match one of the built-in methods */
		mthd = shadow_methods;
		do {
			if (FUNC10(source, mthd->desc))
				continue;
			FUNC7(bios, "source: %s\n", mthd->desc);

			mthd->shadow(bios);
			mthd->score = FUNC3(bios, mthd->rw);
			if (mthd->score) {
				FUNC0(source);
				return 0;
			}
		} while ((++mthd)->shadow);

		/* attempt to load firmware image */
		ret = FUNC9(&fw, source, &FUNC5(bios)->pdev->dev);
		if (ret == 0) {
			bios->size = fw->size;
			bios->data = FUNC1(fw->data, fw->size, GFP_KERNEL);
			FUNC8(fw);

			FUNC7(bios, "image: %s\n", source);
			if (FUNC3(bios, 1)) {
				FUNC0(source);
				return 0;
			}

			FUNC0(bios->data);
			bios->data = NULL;
		}

		FUNC6(bios, "source \'%s\' invalid\n", source);
		FUNC0(source);
	}

	mthd = shadow_methods;
	do {
		FUNC7(bios, "checking %s for image...\n", mthd->desc);
		mthd->shadow(bios);
		mthd->score = FUNC3(bios, mthd->rw);
		mthd->size = bios->size;
		mthd->data = bios->data;
		bios->data = NULL;
	} while (mthd->score != 3 && (++mthd)->shadow);

	mthd = shadow_methods;
	best = mthd;
	do {
		if (mthd->score > best->score) {
			FUNC0(best->data);
			best = mthd;
		}
	} while ((++mthd)->shadow);

	if (best->score) {
		FUNC7(bios, "using image from %s\n", best->desc);
		bios->size = best->size;
		bios->data = best->data;
		return 0;
	}

	FUNC6(bios, "unable to locate usable image\n");
	return -EINVAL;
}