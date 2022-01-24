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
struct ti_lynx {int* pcl_bmap; int /*<<< orphan*/  lock; } ;
typedef  int pcl_t ;

/* Variables and functions */
 int LOCALRAM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static pcl_t FUNC2(struct ti_lynx *lynx)
{
        u8 m;
        int i, j;

        FUNC0(&lynx->lock);
        /* FIXME - use ffz() to make this readable */
        for (i = 0; i < (LOCALRAM_SIZE / 1024); i++) {
                m = lynx->pcl_bmap[i];
                for (j = 0; j < 8; j++) {
                        if (m & 1<<j) {
                                continue;
                        }
                        m |= 1<<j;
                        lynx->pcl_bmap[i] = m;
                        FUNC1(&lynx->lock);
                        return 8 * i + j;
                }
        }
        FUNC1(&lynx->lock);

        return -1;
}