#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int TupleCode; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  DesiredTuple; } ;
typedef  TYPE_1__ tuple_t ;
struct pcmcia_socket {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ cisparse_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIND_FN_ALL ; 
 int /*<<< orphan*/  CISTPL_CFTABLE_ENTRY ; 
 int /*<<< orphan*/  CISTPL_CFTABLE_ENTRY_CB ; 
 int CISTPL_DEVICE ; 
 int /*<<< orphan*/  CISTPL_MANFID ; 
 int /*<<< orphan*/  CISTPL_VERS_1 ; 
 int /*<<< orphan*/  CISTPL_VERS_2 ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 unsigned int MAX_TUPLES ; 
 int /*<<< orphan*/  RETURN_FIRST_TUPLE ; 
 int /*<<< orphan*/  TUPLE_RETURN_COMMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pcmcia_socket*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (struct pcmcia_socket*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC6(struct pcmcia_socket *s, unsigned int *info)
{
    tuple_t *tuple;
    cisparse_t *p;
    unsigned int count = 0;
    int ret, reserved, dev_ok = 0, ident_ok = 0;

    if (!s)
	return -EINVAL;

    tuple = FUNC2(sizeof(*tuple), GFP_KERNEL);
    if (tuple == NULL) {
	    FUNC0(KERN_WARNING, &s->dev, "no memory to validate CIS\n");
	    return -ENOMEM;
    }
    p = FUNC2(sizeof(*p), GFP_KERNEL);
    if (p == NULL) {
	    FUNC1(tuple);
	    FUNC0(KERN_WARNING, &s->dev, "no memory to validate CIS\n");
	    return -ENOMEM;
    }

    count = reserved = 0;
    tuple->DesiredTuple = RETURN_FIRST_TUPLE;
    tuple->Attributes = TUPLE_RETURN_COMMON;
    ret = FUNC3(s, BIND_FN_ALL, tuple);
    if (ret != 0)
	goto done;

    /* First tuple should be DEVICE; we should really have either that
       or a CFTABLE_ENTRY of some sort */
    if ((tuple->TupleCode == CISTPL_DEVICE) ||
	(FUNC5(s, BIND_FN_ALL, CISTPL_CFTABLE_ENTRY, p) == 0) ||
	(FUNC5(s, BIND_FN_ALL, CISTPL_CFTABLE_ENTRY_CB, p) == 0))
	dev_ok++;

    /* All cards should have a MANFID tuple, and/or a VERS_1 or VERS_2
       tuple, for card identification.  Certain old D-Link and Linksys
       cards have only a broken VERS_2 tuple; hence the bogus test. */
    if ((FUNC5(s, BIND_FN_ALL, CISTPL_MANFID, p) == 0) ||
	(FUNC5(s, BIND_FN_ALL, CISTPL_VERS_1, p) == 0) ||
	(FUNC5(s, BIND_FN_ALL, CISTPL_VERS_2, p) != -ENOSPC))
	ident_ok++;

    if (!dev_ok && !ident_ok)
	goto done;

    for (count = 1; count < MAX_TUPLES; count++) {
	ret = FUNC4(s, BIND_FN_ALL, tuple);
	if (ret != 0)
		break;
	if (((tuple->TupleCode > 0x23) && (tuple->TupleCode < 0x40)) ||
	    ((tuple->TupleCode > 0x47) && (tuple->TupleCode < 0x80)) ||
	    ((tuple->TupleCode > 0x90) && (tuple->TupleCode < 0xff)))
	    reserved++;
    }
    if ((count == MAX_TUPLES) || (reserved > 5) ||
	((!dev_ok || !ident_ok) && (count > 10)))
	count = 0;

done:
    if (info)
	    *info = count;
    FUNC1(tuple);
    FUNC1(p);
    return 0;
}