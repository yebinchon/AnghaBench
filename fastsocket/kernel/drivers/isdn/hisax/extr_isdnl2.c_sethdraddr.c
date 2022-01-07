
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct Layer2 {int sap; int tei; int flag; } ;


 int FLG_LAPD ;
 int FLG_ORIG ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
sethdraddr(struct Layer2 *l2, u_char * header, int rsp)
{
 u_char *ptr = header;
 int crbit = rsp;

 if (test_bit(FLG_LAPD, &l2->flag)) {
  *ptr++ = (l2->sap << 2) | (rsp ? 2 : 0);
  *ptr++ = (l2->tei << 1) | 1;
  return (2);
 } else {
  if (test_bit(FLG_ORIG, &l2->flag))
   crbit = !crbit;
  if (crbit)
   *ptr++ = 1;
  else
   *ptr++ = 3;
  return (1);
 }
}
