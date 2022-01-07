
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ G_SCD_BERR_DCODE (int ) ;
 scalar_t__ G_SCD_BERR_RID (int ) ;
 int G_SCD_BERR_TID (int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void print_summary(uint32_t status, uint32_t l2_err,
     uint32_t memio_err)
{
 printk("Bus watcher error counters: %08x %08x\n", l2_err, memio_err);
 printk("\nLast recorded signature:\n");
 printk("Request %02x from %d, answered by %d with Dcode %d\n",
        (unsigned int)(G_SCD_BERR_TID(status) & 0x3f),
        (int)(G_SCD_BERR_TID(status) >> 6),
        (int)G_SCD_BERR_RID(status),
        (int)G_SCD_BERR_DCODE(status));
}
