
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int pr_debug (char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dump_cqe(void *cqe)
{
 __be32 *buf = cqe;

 pr_debug("CQE contents %08x %08x %08x %08x %08x %08x %08x %08x\n",
        be32_to_cpu(buf[0]), be32_to_cpu(buf[1]), be32_to_cpu(buf[2]),
        be32_to_cpu(buf[3]), be32_to_cpu(buf[4]), be32_to_cpu(buf[5]),
        be32_to_cpu(buf[6]), be32_to_cpu(buf[7]));
}
