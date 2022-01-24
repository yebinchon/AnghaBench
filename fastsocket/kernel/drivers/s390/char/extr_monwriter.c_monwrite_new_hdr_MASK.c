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
struct monwrite_hdr {int datalen; scalar_t__ mon_function; int hdrlen; } ;
struct mon_private {struct mon_buf* current_buf; int /*<<< orphan*/  list; struct monwrite_hdr hdr; } ;
struct mon_buf {int /*<<< orphan*/  list; struct monwrite_hdr hdr; struct mon_buf* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  APPLDATA_STOP_REC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ MONWRITE_GEN_EVENT ; 
 int MONWRITE_MAX_DATALEN ; 
 scalar_t__ MONWRITE_START_CONFIG ; 
 scalar_t__ MONWRITE_STOP_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mon_buf*) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ mon_buf_count ; 
 scalar_t__ mon_max_bufs ; 
 int FUNC4 (struct monwrite_hdr*,struct mon_buf*,int /*<<< orphan*/ ) ; 
 struct mon_buf* FUNC5 (struct mon_private*,struct monwrite_hdr*) ; 

__attribute__((used)) static int FUNC6(struct mon_private *monpriv)
{
	struct monwrite_hdr *monhdr = &monpriv->hdr;
	struct mon_buf *monbuf;
	int rc;

	if (monhdr->datalen > MONWRITE_MAX_DATALEN ||
	    monhdr->mon_function > MONWRITE_START_CONFIG ||
	    monhdr->hdrlen != sizeof(struct monwrite_hdr))
		return -EINVAL;
	monbuf = NULL;
	if (monhdr->mon_function != MONWRITE_GEN_EVENT)
		monbuf = FUNC5(monpriv, monhdr);
	if (monbuf) {
		if (monhdr->mon_function == MONWRITE_STOP_INTERVAL) {
			monhdr->datalen = monbuf->hdr.datalen;
			rc = FUNC4(monhdr, monbuf->data,
					   APPLDATA_STOP_REC);
			FUNC3(&monbuf->list);
			mon_buf_count--;
			FUNC0(monbuf->data);
			FUNC0(monbuf);
			monbuf = NULL;
		}
	} else if (monhdr->mon_function != MONWRITE_STOP_INTERVAL) {
		if (mon_buf_count >= mon_max_bufs)
			return -ENOSPC;
		monbuf = FUNC1(sizeof(struct mon_buf), GFP_KERNEL);
		if (!monbuf)
			return -ENOMEM;
		monbuf->data = FUNC1(monhdr->datalen,
				       GFP_KERNEL | GFP_DMA);
		if (!monbuf->data) {
			FUNC0(monbuf);
			return -ENOMEM;
		}
		monbuf->hdr = *monhdr;
		FUNC2(&monbuf->list, &monpriv->list);
		if (monhdr->mon_function != MONWRITE_GEN_EVENT)
			mon_buf_count++;
	}
	monpriv->current_buf = monbuf;
	return 0;
}