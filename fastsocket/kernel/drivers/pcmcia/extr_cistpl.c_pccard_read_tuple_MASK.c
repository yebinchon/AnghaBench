#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int TupleDataMax; scalar_t__ TupleOffset; int /*<<< orphan*/ * TupleData; scalar_t__ Attributes; int /*<<< orphan*/  DesiredTuple; } ;
typedef  TYPE_1__ tuple_t ;
struct pcmcia_socket {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  cisdata_t ;

/* Variables and functions */
 unsigned int BIND_FN_ALL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 scalar_t__ TUPLE_RETURN_COMMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pcmcia_socket*,unsigned int,TYPE_1__*) ; 
 int FUNC4 (struct pcmcia_socket*,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,void*) ; 

int FUNC6(struct pcmcia_socket *s, unsigned int function, cisdata_t code, void *parse)
{
    tuple_t tuple;
    cisdata_t *buf;
    int ret;

    buf = FUNC2(256, GFP_KERNEL);
    if (buf == NULL) {
	    FUNC0(KERN_WARNING, &s->dev, "no memory to read tuple\n");
	    return -ENOMEM;
    }
    tuple.DesiredTuple = code;
    tuple.Attributes = 0;
    if (function == BIND_FN_ALL)
	    tuple.Attributes = TUPLE_RETURN_COMMON;
    ret = FUNC3(s, function, &tuple);
    if (ret != 0)
	    goto done;
    tuple.TupleData = buf;
    tuple.TupleOffset = 0;
    tuple.TupleDataMax = 255;
    ret = FUNC4(s, &tuple);
    if (ret != 0)
	    goto done;
    ret = FUNC5(&tuple, parse);
done:
    FUNC1(buf);
    return ret;
}