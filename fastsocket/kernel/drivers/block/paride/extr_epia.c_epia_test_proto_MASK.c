#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  port; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC6( PIA *pi, char * scratch, int verbose )

{       int     j, k, f;
	int	e[2] = {0,0};

        FUNC2(pi);
        for (j=0;j<2;j++) {
            FUNC1(6,0xa0+j*0x10);
            for (k=0;k<256;k++) {
                FUNC1(2,k^0xaa);
                FUNC1(3,k^0x55);
                if (FUNC0(2) != (k^0xaa)) e[j]++;
                }
	    FUNC1(2,1); FUNC1(3,1);
            }
        FUNC3(pi);

        f = 0;
        FUNC2(pi);
        FUNC1(0x84,8);
        FUNC4(pi,scratch,512);
        for (k=0;k<256;k++) {
            if ((scratch[2*k] & 0xff) != ((k+1) & 0xff)) f++;
            if ((scratch[2*k+1] & 0xff) != ((-2-k) & 0xff)) f++;
        }
        FUNC1(0x84,0);
        FUNC3(pi);

        if (verbose)  {
            FUNC5("%s: epia: port 0x%x, mode %d, test=(%d,%d,%d)\n",
                   pi->device,pi->port,pi->mode,e[0],e[1],f);
        }
        
        return (e[0] && e[1]) || f;

}