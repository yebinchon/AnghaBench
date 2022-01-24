#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct TYPE_3__ {scalar_t__ TupleLink; scalar_t__ TupleOffset; scalar_t__ TupleDataLen; scalar_t__ CISOffset; int /*<<< orphan*/  TupleData; int /*<<< orphan*/  TupleDataMax; int /*<<< orphan*/  Flags; } ;
typedef  TYPE_1__ tuple_t ;
struct pcmcia_socket {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct pcmcia_socket *s, tuple_t *tuple)
{
    u_int len;

    if (!s)
	return -EINVAL;

    if (tuple->TupleLink < tuple->TupleOffset)
	return -ENOSPC;
    len = tuple->TupleLink - tuple->TupleOffset;
    tuple->TupleDataLen = tuple->TupleLink;
    if (len == 0)
	return 0;
    FUNC2(s, FUNC0(tuple->Flags),
		   tuple->CISOffset + tuple->TupleOffset,
		   FUNC1(len, tuple->TupleDataMax), tuple->TupleData);
    return 0;
}