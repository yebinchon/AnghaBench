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
struct mm_struct {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUN3_INVALID_CONTEXT ; 
 unsigned long SUN3_INVALID_PMEG ; 
 struct mm_struct** ctx_alloc ; 
 int /*<<< orphan*/  ctx_avail ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int* pmeg_alloc ; 
 unsigned long* pmeg_ctx ; 
 scalar_t__* pmeg_vaddr ; 
 unsigned char FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 

void FUNC4(unsigned long context)
{
     unsigned char oldctx;
     unsigned long i;

     if(context) {
	     if(!ctx_alloc[context])
		     FUNC0("clear_context: context not allocated\n");

	     ctx_alloc[context]->context = SUN3_INVALID_CONTEXT;
	     ctx_alloc[context] = (struct mm_struct *)0;
	     ctx_avail++;
     }

     oldctx = FUNC1();

     FUNC2(context);

     for(i = 0; i < SUN3_INVALID_PMEG; i++) {
	     if((pmeg_ctx[i] == context) && (pmeg_alloc[i] == 1)) {
		     FUNC3(pmeg_vaddr[i], SUN3_INVALID_PMEG);
		     pmeg_ctx[i] = 0;
		     pmeg_alloc[i] = 0;
		     pmeg_vaddr[i] = 0;
	     }
     }

     FUNC2(oldctx);
}