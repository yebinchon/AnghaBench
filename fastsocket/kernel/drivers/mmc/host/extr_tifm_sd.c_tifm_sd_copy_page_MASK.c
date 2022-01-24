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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_BIO_DST_IRQ ; 
 int /*<<< orphan*/  KM_BIO_SRC_IRQ ; 
 unsigned char* FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct page *dst, unsigned int dst_off,
			      struct page *src, unsigned int src_off,
			      unsigned int count)
{
	unsigned char *src_buf = FUNC0(src, KM_BIO_SRC_IRQ) + src_off;
	unsigned char *dst_buf = FUNC0(dst, KM_BIO_DST_IRQ) + dst_off;

	FUNC2(dst_buf, src_buf, count);

	FUNC1(dst_buf - dst_off, KM_BIO_DST_IRQ);
	FUNC1(src_buf - src_off, KM_BIO_SRC_IRQ);
}