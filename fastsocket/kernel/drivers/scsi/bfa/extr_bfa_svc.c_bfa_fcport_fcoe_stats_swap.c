
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_fcoe_stats_s {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;

__attribute__((used)) static void
bfa_fcport_fcoe_stats_swap(struct bfa_fcoe_stats_s *d,
 struct bfa_fcoe_stats_s *s)
{
 u32 *dip = (u32 *) d;
 __be32 *sip = (__be32 *) s;
 int i;

 for (i = 0; i < ((sizeof(struct bfa_fcoe_stats_s))/sizeof(u32));
      i = i + 2) {




  dip[i] = be32_to_cpu(sip[i + 1]);
  dip[i + 1] = be32_to_cpu(sip[i]);

 }
}
