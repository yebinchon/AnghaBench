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
typedef  int /*<<< orphan*/  u16 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {int ecc_sym_sz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  x4_vectors ; 
 int /*<<< orphan*/  x8_vectors ; 

__attribute__((used)) static int FUNC4(struct mem_ctl_info *mci, u16 syndrome)
{
	struct amd64_pvt *pvt = mci->pvt_info;
	int err_sym = -1;

	if (pvt->ecc_sym_sz == 8)
		err_sym = FUNC2(syndrome, x8_vectors,
					  FUNC0(x8_vectors),
					  pvt->ecc_sym_sz);
	else if (pvt->ecc_sym_sz == 4)
		err_sym = FUNC2(syndrome, x4_vectors,
					  FUNC0(x4_vectors),
					  pvt->ecc_sym_sz);
	else {
		FUNC1("Illegal syndrome type: %u\n", pvt->ecc_sym_sz);
		return err_sym;
	}

	return FUNC3(err_sym, pvt->ecc_sym_sz);
}