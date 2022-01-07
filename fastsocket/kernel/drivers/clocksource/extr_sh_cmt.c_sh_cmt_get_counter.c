
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_priv {int overflow_bit; } ;


 int CMCNT ;
 int CMCSR ;
 int sh_cmt_read (struct sh_cmt_priv*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned long sh_cmt_get_counter(struct sh_cmt_priv *p,
     int *has_wrapped)
{
 unsigned long v1, v2, v3;
 int o1, o2;

 o1 = sh_cmt_read(p, CMCSR) & p->overflow_bit;


 do {
  o2 = o1;
  v1 = sh_cmt_read(p, CMCNT);
  v2 = sh_cmt_read(p, CMCNT);
  v3 = sh_cmt_read(p, CMCNT);
  o1 = sh_cmt_read(p, CMCSR) & p->overflow_bit;
 } while (unlikely((o1 != o2) || (v1 > v2 && v1 < v3)
     || (v2 > v3 && v2 < v1) || (v3 > v1 && v3 < v2)));

 *has_wrapped = o1;
 return v2;
}
