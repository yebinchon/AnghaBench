
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refcount; } ;
struct cxgbi_sock {TYPE_1__ refcnt; } ;


 int CXGBI_DBG_SOCK ;
 int atomic_read (int *) ;
 int kref_get (TYPE_1__*) ;
 int log_debug (int,char*,char const*,struct cxgbi_sock*,int ) ;

__attribute__((used)) static inline void __cxgbi_sock_get(const char *fn, struct cxgbi_sock *csk)
{
 log_debug(1 << CXGBI_DBG_SOCK,
  "%s, get csk 0x%p, ref %u+1.\n",
  fn, csk, atomic_read(&csk->refcnt.refcount));
 kref_get(&csk->refcnt);
}
