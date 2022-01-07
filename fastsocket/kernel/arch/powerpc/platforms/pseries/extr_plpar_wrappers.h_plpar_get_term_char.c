
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_GET_TERM_CHAR ;
 int PLPAR_HCALL_BUFSIZE ;
 long plpar_hcall (int ,unsigned long*,unsigned long) ;

__attribute__((used)) static inline long plpar_get_term_char(unsigned long termno,
  unsigned long *len_ret, char *buf_ret)
{
 long rc;
 unsigned long retbuf[PLPAR_HCALL_BUFSIZE];
 unsigned long *lbuf = (unsigned long *)buf_ret;

 rc = plpar_hcall(H_GET_TERM_CHAR, retbuf, termno);

 *len_ret = retbuf[0];
 lbuf[0] = retbuf[1];
 lbuf[1] = retbuf[2];

 return rc;
}
