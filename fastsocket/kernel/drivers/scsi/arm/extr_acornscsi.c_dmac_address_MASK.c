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
typedef  int /*<<< orphan*/  AS_Host ;

/* Variables and functions */
 int /*<<< orphan*/  DMAC_TXADRHI ; 
 int /*<<< orphan*/  DMAC_TXADRLO ; 
 int /*<<< orphan*/  DMAC_TXADRMD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned int FUNC1(AS_Host *host)
{
    return FUNC0(host, DMAC_TXADRHI) << 16 |
	   FUNC0(host, DMAC_TXADRMD) << 8 |
	   FUNC0(host, DMAC_TXADRLO);
}