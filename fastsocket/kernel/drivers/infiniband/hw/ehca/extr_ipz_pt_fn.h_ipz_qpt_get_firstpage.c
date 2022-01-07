
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipz_qpt {int * qpts; } ;


 int be64_to_cpu (int ) ;

__attribute__((used)) static inline u64 ipz_qpt_get_firstpage(struct ipz_qpt *qpt)
{
 return be64_to_cpu(qpt->qpts[0]);
}
