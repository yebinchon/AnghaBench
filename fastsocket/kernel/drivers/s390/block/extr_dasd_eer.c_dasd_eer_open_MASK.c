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
struct inode {int dummy; } ;
struct file {struct eerbuffer* private_data; } ;
struct eerbuffer {int buffer_page_count; int buffersize; int /*<<< orphan*/  list; struct eerbuffer* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int INT_MAX ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  bufferlist ; 
 int /*<<< orphan*/  bufferlock ; 
 scalar_t__ FUNC1 (struct eerbuffer*,int) ; 
 int eer_pages ; 
 int /*<<< orphan*/  FUNC2 (struct eerbuffer*) ; 
 struct eerbuffer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct eerbuffer* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct inode *inp, struct file *filp)
{
	struct eerbuffer *eerb;
	unsigned long flags;

	eerb = FUNC4(sizeof(struct eerbuffer), GFP_KERNEL);
	if (!eerb)
		return -ENOMEM;
	FUNC6();
	eerb->buffer_page_count = eer_pages;
	if (eerb->buffer_page_count < 1 ||
	    eerb->buffer_page_count > INT_MAX / PAGE_SIZE) {
		FUNC2(eerb);
		FUNC0(DBF_WARNING, "can't open device since module "
			"parameter eer_pages is smaller than 1 or"
			" bigger than %d", (int)(INT_MAX / PAGE_SIZE));
		FUNC10();
		return -EINVAL;
	}
	eerb->buffersize = eerb->buffer_page_count * PAGE_SIZE;
	eerb->buffer = FUNC3(eerb->buffer_page_count * sizeof(char *),
			       GFP_KERNEL);
        if (!eerb->buffer) {
		FUNC2(eerb);
		FUNC10();
                return -ENOMEM;
	}
	if (FUNC1(eerb->buffer,
					   eerb->buffer_page_count)) {
		FUNC2(eerb->buffer);
		FUNC2(eerb);
		FUNC10();
		return -ENOMEM;
	}
	filp->private_data = eerb;
	FUNC8(&bufferlock, flags);
	FUNC5(&eerb->list, &bufferlist);
	FUNC9(&bufferlock, flags);

	FUNC10();
	return FUNC7(inp,filp);
}