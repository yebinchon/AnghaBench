
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;





__attribute__((used)) static bool kvm_hv_msr_partition_wide(u32 msr)
{
        bool r = 0;
        switch (msr) {
        case 129:
        case 128:
                r = 1;
                break;
        }

        return r;
}
