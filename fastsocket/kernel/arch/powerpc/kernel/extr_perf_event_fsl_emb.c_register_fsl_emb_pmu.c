
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_emb_pmu {int name; } ;


 int EBUSY ;
 int PERF_TYPE_RAW ;
 int fsl_emb_pmu ;
 int perf_pmu_register (int *,char*,int ) ;
 struct fsl_emb_pmu* ppmu ;
 int pr_info (char*,int ) ;

int register_fsl_emb_pmu(struct fsl_emb_pmu *pmu)
{
 if (ppmu)
  return -EBUSY;

 ppmu = pmu;
 pr_info("%s performance monitor hardware support registered\n",
  pmu->name);

 perf_pmu_register(&fsl_emb_pmu, "cpu", PERF_TYPE_RAW);

 return 0;
}
