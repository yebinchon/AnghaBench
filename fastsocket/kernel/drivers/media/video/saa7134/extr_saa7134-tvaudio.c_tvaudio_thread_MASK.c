#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ scan1; scalar_t__ scan2; unsigned int mode; int stopped; } ;
struct saa7134_dev {int automute; int last_carrier; TYPE_2__ thread; TYPE_3__* tvaudio; TYPE_1__* tvnorm; scalar_t__ ctl_automute; } ;
struct TYPE_13__ {int std; int carr; } ;
struct TYPE_12__ {int std; int carr1; } ;
struct TYPE_10__ {int id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  SAA7134_FM_DEMATRIX ; 
 int /*<<< orphan*/  SAA7134_MONITOR_SELECT ; 
 int /*<<< orphan*/  SAA7134_STEREO_DAC_OUTPUT_SELECT ; 
 int SCAN_INITIAL_DELAY ; 
 int SCAN_SUBCARRIER_DELAY ; 
 unsigned int TVAUDIO ; 
 unsigned int UNSET ; 
 int V4L2_TUNER_MODE_MONO ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_6__* mainscan ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_3__* tvaudio ; 
 int FUNC10 (struct saa7134_dev*,TYPE_6__*) ; 
 int FUNC11 (struct saa7134_dev*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (struct saa7134_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct saa7134_dev*,TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct saa7134_dev*,TYPE_3__*,int) ; 
 scalar_t__ FUNC15 (struct saa7134_dev*,int) ; 

__attribute__((used)) static int FUNC16(void *data)
{
	struct saa7134_dev *dev = data;
	int carr_vals[FUNC0(mainscan)];
	unsigned int i, audio, nscan;
	int max1,max2,carrier,rx,mode,lastmode,default_carrier;

	FUNC8();

	for (;;) {
		FUNC15(dev,-1);
		if (FUNC2())
			goto done;

	restart:
		FUNC9();

		dev->thread.scan1 = dev->thread.scan2;
		FUNC1("tvaudio thread scan start [%d]\n",dev->thread.scan1);
		dev->tvaudio  = NULL;

		FUNC7(SAA7134_MONITOR_SELECT,   0xa0);
		FUNC7(SAA7134_FM_DEMATRIX,      0x80);

		if (dev->ctl_automute)
			dev->automute = 1;

		FUNC3(dev);

		/* give the tuner some time */
		if (FUNC15(dev,SCAN_INITIAL_DELAY))
			goto restart;

		max1 = 0;
		max2 = 0;
		nscan = 0;
		carrier = 0;
		default_carrier = 0;
		for (i = 0; i < FUNC0(mainscan); i++) {
			if (!(dev->tvnorm->id & mainscan[i].std))
				continue;
			if (!default_carrier)
				default_carrier = mainscan[i].carr;
			nscan++;
		}

		if (1 == nscan) {
			/* only one candidate -- skip scan ;) */
			FUNC1("only one main carrier candidate - skipping scan\n");
			max1 = 12345;
			carrier = default_carrier;
		} else {
			/* scan for the main carrier */
			FUNC7(SAA7134_MONITOR_SELECT,0x00);
			FUNC13(dev,&tvaudio[0],NULL);
			for (i = 0; i < FUNC0(mainscan); i++) {
				carr_vals[i] = FUNC10(dev, mainscan+i);
				if (dev->thread.scan1 != dev->thread.scan2)
					goto restart;
			}
			for (max1 = 0, max2 = 0, i = 0; i < FUNC0(mainscan); i++) {
				if (max1 < carr_vals[i]) {
					max2 = max1;
					max1 = carr_vals[i];
					carrier = mainscan[i].carr;
				} else if (max2 < carr_vals[i]) {
					max2 = carr_vals[i];
				}
			}
		}

		if (0 != carrier && max1 > 2000 && max1 > max2*3) {
			/* found good carrier */
			FUNC1("found %s main sound carrier @ %d.%03d MHz [%d/%d]\n",
				dev->tvnorm->name, carrier/1000, carrier%1000,
				max1, max2);
			dev->last_carrier = carrier;

		} else if (0 != dev->last_carrier) {
			/* no carrier -- try last detected one as fallback */
			carrier = dev->last_carrier;
			FUNC1("audio carrier scan failed, "
				"using %d.%03d MHz [last detected]\n",
				carrier/1000, carrier%1000);

		} else {
			/* no carrier + no fallback -- use default */
			carrier = default_carrier;
			FUNC1("audio carrier scan failed, "
				"using %d.%03d MHz [default]\n",
				carrier/1000, carrier%1000);
		}
		FUNC12(dev,carrier,carrier);
		dev->automute = 0;
		FUNC6(SAA7134_STEREO_DAC_OUTPUT_SELECT, 0x30, 0x00);
		FUNC5(dev);
		/* find the exact tv audio norm */
		for (audio = UNSET, i = 0; i < TVAUDIO; i++) {
			if (dev->tvnorm->id != UNSET &&
				!(dev->tvnorm->id & tvaudio[i].std))
				continue;
			if (tvaudio[i].carr1 != carrier)
				continue;
			/* Note: at least the primary carrier is right here */
			if (UNSET == audio)
				audio = i;
			FUNC13(dev,&tvaudio[i],"trying");
			if (FUNC15(dev,SCAN_SUBCARRIER_DELAY))
				goto restart;
			if (-1 != FUNC11(dev,&tvaudio[i])) {
				audio = i;
				break;
			}
		}
		FUNC6(SAA7134_STEREO_DAC_OUTPUT_SELECT, 0x30, 0x30);
		if (UNSET == audio)
			continue;
		FUNC13(dev,&tvaudio[audio],"using");

		FUNC14(dev,&tvaudio[audio],V4L2_TUNER_MODE_MONO);
		dev->tvaudio = &tvaudio[audio];

		lastmode = 42;
		for (;;) {

			FUNC9();

			if (FUNC15(dev,5000))
				goto restart;
			if (FUNC2())
				break;
			if (UNSET == dev->thread.mode) {
				rx = FUNC11(dev,&tvaudio[i]);
				mode = FUNC4(rx);
			} else {
				mode = dev->thread.mode;
			}
			if (lastmode != mode) {
				FUNC14(dev,&tvaudio[audio],mode);
				lastmode = mode;
			}
		}
	}

 done:
	dev->thread.stopped = 1;
	return 0;
}