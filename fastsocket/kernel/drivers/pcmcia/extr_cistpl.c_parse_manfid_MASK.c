#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int TupleDataLen; scalar_t__ TupleData; } ;
typedef  TYPE_1__ tuple_t ;
struct TYPE_6__ {void* card; void* manf; } ;
typedef  TYPE_2__ cistpl_manfid_t ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (scalar_t__) ; 

__attribute__((used)) static int FUNC1(tuple_t *tuple, cistpl_manfid_t *m)
{
    if (tuple->TupleDataLen < 4)
	return -EINVAL;
    m->manf = FUNC0(tuple->TupleData);
    m->card = FUNC0(tuple->TupleData + 2);
    return 0;
}