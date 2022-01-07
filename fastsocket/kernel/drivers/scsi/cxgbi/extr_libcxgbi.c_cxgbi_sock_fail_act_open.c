
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int s_addr; } ;
struct TYPE_8__ {int sin_port; TYPE_3__ sin_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {int sin_port; TYPE_1__ sin_addr; } ;
struct cxgbi_sock {int err; TYPE_4__ daddr; TYPE_2__ saddr; int flags; int state; } ;


 int CTP_CONNECTING ;
 int cxgbi_sock_closed (struct cxgbi_sock*) ;
 int cxgbi_sock_set_state (struct cxgbi_sock*,int ) ;
 int pr_info (char*,struct cxgbi_sock*,int ,int ,int *,int ,int *,int ,int) ;

void cxgbi_sock_fail_act_open(struct cxgbi_sock *csk, int errno)
{
 pr_info("csk 0x%p,%u,%lx, %pI4:%u-%pI4:%u, err %d.\n",
   csk, csk->state, csk->flags,
   &csk->saddr.sin_addr.s_addr, csk->saddr.sin_port,
   &csk->daddr.sin_addr.s_addr, csk->daddr.sin_port,
   errno);

 cxgbi_sock_set_state(csk, CTP_CONNECTING);
 csk->err = errno;
 cxgbi_sock_closed(csk);
}
