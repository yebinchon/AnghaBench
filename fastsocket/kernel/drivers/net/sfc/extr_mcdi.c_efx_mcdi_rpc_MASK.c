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
typedef  int /*<<< orphan*/  u8 ;
struct efx_nic {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct efx_nic*,unsigned int,size_t,int /*<<< orphan*/ *,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,unsigned int,int /*<<< orphan*/  const*,size_t) ; 

int FUNC2(struct efx_nic *efx, unsigned cmd,
		 const u8 *inbuf, size_t inlen, u8 *outbuf, size_t outlen,
		 size_t *outlen_actual)
{
	FUNC1(efx, cmd, inbuf, inlen);
	return FUNC0(efx, cmd, inlen,
				   outbuf, outlen, outlen_actual);
}