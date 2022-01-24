#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ulong ;
typedef  int u_char ;
struct TYPE_5__ {int invoke_id; int remote_result; } ;
struct TYPE_6__ {TYPE_2__ ni1; } ;
struct l3_process {int redir_result; TYPE_3__ prot; struct PStack* st; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* l3l4 ) (struct PStack*,int,struct l3_process*) ;} ;
struct PStack {TYPE_1__ l3; } ;

/* Variables and functions */
 int CC_REDIR ; 
 int INDICATION ; 
 int /*<<< orphan*/  FUNC0 (struct PStack*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct PStack*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct PStack*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct PStack*,int,int,int,int*,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct PStack*,int,int*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct PStack*,int,struct l3_process*) ; 
 int /*<<< orphan*/  FUNC6 (struct PStack*,int,struct l3_process*) ; 

__attribute__((used)) static void
FUNC7(struct PStack *st, struct l3_process *pc,
                      int cr, u_char * p)
{
	int qd_len = 0;
	unsigned char nlen = 0, ilen, cp_tag;
	int ident, id;
	ulong err_ret;

	if (pc) 
		st = pc->st; /* valid Stack */
	else
		if ((!st) || (cr >= 0)) return; /* neither pc nor st specified */

	p++;
	qd_len = *p++;
	if (qd_len == 0) {
		FUNC1(st, "qd_len == 0");
		return;
	}
	if ((*p & 0x1F) != 0x11) {	/* Service discriminator, supplementary service */
		FUNC1(st, "supplementary service != 0x11");
		return;
	}
	while (qd_len > 0 && !(*p & 0x80)) {	/* extension ? */
		p++;
		qd_len--;
	}
	if (qd_len < 2) {
		FUNC1(st, "qd_len < 2");
		return;
	}
	p++;
	qd_len--;
	if ((*p & 0xE0) != 0xA0) {	/* class and form */
		FUNC1(st, "class and form != 0xA0");
		return;
	}
       
        cp_tag = *p & 0x1F; /* remember tag value */

        p++;
	qd_len--;
	if (qd_len < 1) 
          { FUNC1(st, "qd_len < 1");
	    return;
	  }
	if (*p & 0x80) 
          { /* length format indefinite or limited */
	    nlen = *p++ & 0x7F; /* number of len bytes or indefinite */
            if ((qd_len-- < ((!nlen) ? 3 : (1 + nlen))) ||
                (nlen > 1))   
	     { FUNC1(st, "length format error or not implemented");
	       return;
             }
            if (nlen == 1)
	     { nlen = *p++; /* complete length */
               qd_len--;
             } 
            else
	     { qd_len -= 2; /* trailing null bytes */
               if ((*(p+qd_len)) || (*(p+qd_len+1)))
		{ FUNC1(st,"length format indefinite error");
                  return;
                }
               nlen = qd_len;
             }
	  }
        else
	  { nlen = *p++;
	    qd_len--;
          } 
	if (qd_len < nlen) 
          { FUNC1(st, "qd_len < nlen");
	    return;
	  }
	qd_len -= nlen;

	if (nlen < 2) 
          { FUNC1(st, "nlen < 2");
	    return;
	  }
        if (*p != 0x02) 
          {  /* invoke identifier tag */
	     FUNC1(st, "invoke identifier tag !=0x02");
	     return;
	  }
	p++;
	nlen--;
	if (*p & 0x80) 
          { /* length format */
	    FUNC1(st, "invoke id length format 2");
	    return;
	  }
	ilen = *p++;
	nlen--;
	if (ilen > nlen || ilen == 0) 
          { FUNC1(st, "ilen > nlen || ilen == 0");
	    return;
	  }
	nlen -= ilen;
	id = 0;
	while (ilen > 0) 
          { id = (id << 8) | (*p++ & 0xFF);	/* invoke identifier */
	    ilen--;
	  }

	switch (cp_tag) {	/* component tag */
		case 1:	/* invoke */
				if (nlen < 2) {
					FUNC1(st, "nlen < 2 22");
					return;
				}
				if (*p != 0x02) {	/* operation value */
					FUNC1(st, "operation value !=0x02");
					return;
				}
				p++;
				nlen--;
				ilen = *p++;
				nlen--;
				if (ilen > nlen || ilen == 0) {
					FUNC1(st, "ilen > nlen || ilen == 0 22");
					return;
				}
				nlen -= ilen;
				ident = 0;
				while (ilen > 0) {
					ident = (ident << 8) | (*p++ & 0xFF);
					ilen--;
				}

				if (!pc) 
				{
					FUNC3(st, cr, id, ident, p, nlen);
					return;
				} 
				FUNC1(st, "invoke break");
				break;
		case 2:	/* return result */
			 /* if no process available handle separately */ 
                        if (!pc)
			 { if (cr == -1) 
                             FUNC4(st, id, p, nlen);
                           return; 
                         }   
                        if ((pc->prot.ni1.invoke_id) && (pc->prot.ni1.invoke_id == id))
                          { /* Diversion successful */
                            FUNC0(st,pc->prot.ni1.invoke_id);
                            pc->prot.ni1.remote_result = 0; /* success */     
                            pc->prot.ni1.invoke_id = 0;
                            pc->redir_result = pc->prot.ni1.remote_result; 
                            st->l3.l3l4(st, CC_REDIR | INDICATION, pc);                                  } /* Diversion successful */
                        else
                          FUNC1(st,"return error unknown identifier");
			break;
		case 3:	/* return error */
                            err_ret = 0;
	                    if (nlen < 2) 
                              { FUNC1(st, "return error nlen < 2");
	                        return;
	                      }
                            if (*p != 0x02) 
                              { /* result tag */
	                        FUNC1(st, "invoke error tag !=0x02");
	                        return;
	                      }
	                    p++;
	                    nlen--;
	                    if (*p > 4) 
                              { /* length format */
	                        FUNC1(st, "invoke return errlen > 4 ");
	                        return;
	                      }
	                    ilen = *p++;
	                    nlen--;
	                    if (ilen > nlen || ilen == 0) 
                              { FUNC1(st, "error return ilen > nlen || ilen == 0");
	                        return;
	                       }
	                    nlen -= ilen;
	                    while (ilen > 0) 
                             { err_ret = (err_ret << 8) | (*p++ & 0xFF);	/* error value */
	                       ilen--;
	                     }
			 /* if no process available handle separately */ 
                        if (!pc)
			 { if (cr == -1)
                             FUNC2(st, id, err_ret);
                           return; 
                         }   
                        if ((pc->prot.ni1.invoke_id) && (pc->prot.ni1.invoke_id == id))
                          { /* Deflection error */
                            FUNC0(st,pc->prot.ni1.invoke_id);
                            pc->prot.ni1.remote_result = err_ret; /* result */
                            pc->prot.ni1.invoke_id = 0; 
                            pc->redir_result = pc->prot.ni1.remote_result; 
                            st->l3.l3l4(st, CC_REDIR | INDICATION, pc);  
                          } /* Deflection error */
                        else
                          FUNC1(st,"return result unknown identifier");
			break;
		default:
			FUNC1(st, "facility default break tag=0x%02x",cp_tag);
			break;
	}
}