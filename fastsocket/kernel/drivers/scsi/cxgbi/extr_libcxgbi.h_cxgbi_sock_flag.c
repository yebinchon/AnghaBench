
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int flags; } ;
typedef enum cxgbi_sock_flags { ____Placeholder_cxgbi_sock_flags } cxgbi_sock_flags ;


 int test_bit (int,int *) ;

__attribute__((used)) static inline int cxgbi_sock_flag(struct cxgbi_sock *csk,
    enum cxgbi_sock_flags flag)
{
 if (csk == ((void*)0))
  return 0;
 return test_bit(flag, &csk->flags);
}
