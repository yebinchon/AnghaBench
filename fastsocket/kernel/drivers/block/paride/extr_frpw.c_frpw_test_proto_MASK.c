#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int private; int port; int mode; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC7( PIA *pi, char * scratch, int verbose )

{       int     j, k, r;
	int	e[2] = {0,0};

	if ((pi->private>>1) != pi->port)
	   pi->private = FUNC4(pi) + 2*pi->port;

	if (((pi->private%2) == 0) && (pi->mode > 2)) {
	   if (verbose) 
		FUNC6("%s: frpw: Xilinx does not support mode %d\n",
			pi->device, pi->mode);
	   return 1;
	}

	if (((pi->private%2) == 1) && (pi->mode == 2)) {
	   if (verbose)
		FUNC6("%s: frpw: ASIC does not support mode 2\n",
			pi->device);
	   return 1;
	}

	FUNC0(pi);
	for (j=0;j<2;j++) {
                FUNC5(pi,0,6,0xa0+j*0x10);
                for (k=0;k<256;k++) {
                        FUNC5(pi,0,2,k^0xaa);
                        FUNC5(pi,0,3,k^0x55);
                        if (FUNC3(pi,0,2) != (k^0xaa)) e[j]++;
                        }
                }
	FUNC1(pi);

	FUNC0(pi);
        FUNC2(pi,scratch,512,0x10);
        r = 0;
        for (k=0;k<128;k++) if (scratch[k] != k) r++;
	FUNC1(pi);

        if (verbose)  {
            FUNC6("%s: frpw: port 0x%x, chip %ld, mode %d, test=(%d,%d,%d)\n",
                   pi->device,pi->port,(pi->private%2),pi->mode,e[0],e[1],r);
        }

        return (r || (e[0] && e[1]));
}