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
struct mtd_info {int (* write ) (struct mtd_info*,size_t,size_t,size_t*,char*) ;} ;
struct kvec {size_t iov_len; void* iov_base; } ;
typedef  size_t loff_t ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 size_t ECCBUF_SIZE ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,size_t) ; 
 int FUNC6 (struct mtd_info*,size_t,size_t,size_t*,char*) ; 
 int FUNC7 (struct mtd_info*,size_t,size_t,size_t*,void*) ; 
 int FUNC8 (struct mtd_info*,size_t,size_t,size_t*,char*) ; 

__attribute__((used)) static int
FUNC9(struct mtd_info *mtd, const struct kvec *vecs,
		unsigned long count, loff_t to, size_t *retlen)
{
	unsigned long i;
	size_t	 totlen = 0, thislen;
	int	 ret = 0;
	size_t	 buflen = 0;
	static char *buffer;

	if (!ECCBUF_SIZE) {
		/* We should fall back to a general writev implementation.
		 * Until that is written, just break.
		 */
		return -EIO;
	}
	buffer = FUNC3(ECCBUF_SIZE, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	for (i=0; i<count; i++) {
		size_t elem_len = vecs[i].iov_len;
		void *elem_base = vecs[i].iov_base;
		if (!elem_len) /* FIXME: Might be unnecessary. Check that */
			continue;
		if (buflen) { /* cut off head */
			if (buflen + elem_len < ECCBUF_SIZE) { /* just accumulate */
				FUNC4(buffer+buflen, elem_base, elem_len);
				buflen += elem_len;
				continue;
			}
			FUNC4(buffer+buflen, elem_base, ECCBUF_SIZE-buflen);
			ret = mtd->write(mtd, to, ECCBUF_SIZE, &thislen, buffer);
			totlen += thislen;
			if (ret || thislen != ECCBUF_SIZE)
				goto write_error;
			elem_len -= thislen-buflen;
			elem_base += thislen-buflen;
			to += ECCBUF_SIZE;
		}
		if (FUNC0(elem_len)) { /* write clean aligned data */
			ret = mtd->write(mtd, to, FUNC0(elem_len), &thislen, elem_base);
			totlen += thislen;
			if (ret || thislen != FUNC0(elem_len))
				goto write_error;
			to += thislen;
		}
		buflen = FUNC1(elem_len); /* cut off tail */
		if (buflen) {
			FUNC5(buffer, 0xff, ECCBUF_SIZE);
			FUNC4(buffer, elem_base + thislen, buflen);
		}
	}
	if (buflen) { /* flush last page, even if not full */
		/* This is sometimes intended behaviour, really */
		ret = mtd->write(mtd, to, buflen, &thislen, buffer);
		totlen += thislen;
		if (ret || thislen != ECCBUF_SIZE)
			goto write_error;
	}
write_error:
	if (retlen)
		*retlen = totlen;
	FUNC2(buffer);
	return ret;
}