
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipz_qpt {void* qpts; } ;



__attribute__((used)) static inline void *ipz_qpt_get_qpt(struct ipz_qpt *qpt)
{
 return qpt->qpts;
}
