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
struct spi_lm70llp {int /*<<< orphan*/  port; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int SIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct spi_lm70llp* FUNC1 (struct spi_device*) ; 

__attribute__((used)) static inline int FUNC2(struct spi_device *s)
{
	struct spi_lm70llp *pp = FUNC1(s);
	return ((SIO == (FUNC0(pp->port) & SIO)) ? 0 : 1 );
}