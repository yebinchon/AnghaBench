
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_signature {int pf; int sig; } ;


 int sigmatch (int,int ,int,int ) ;

__attribute__((used)) static inline int update_match_cpu(struct cpu_signature *csig, int sig, int pf)
{
 return (!sigmatch(sig, csig->sig, pf, csig->pf)) ? 0 : 1;
}
