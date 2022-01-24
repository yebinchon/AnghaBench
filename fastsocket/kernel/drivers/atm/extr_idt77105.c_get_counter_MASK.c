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
typedef  int u16 ;
struct atm_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRHI ; 
 int /*<<< orphan*/  CTRLO ; 
 int /*<<< orphan*/  CTRSEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC2(struct atm_dev *dev, int counter)
{
        u16 val;
        
        /* write the counter bit into PHY register 6 */
        FUNC1(counter, CTRSEL);
        /* read the low 8 bits from register 4 */
        val = FUNC0(CTRLO);
        /* read the high 8 bits from register 5 */
        val |= FUNC0(CTRHI)<<8;
        
        return val;
}