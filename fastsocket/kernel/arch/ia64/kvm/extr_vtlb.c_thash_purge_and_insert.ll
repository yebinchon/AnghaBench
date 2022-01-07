; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_thash_purge_and_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_thash_purge_and_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%union.ia64_rr = type { i64 }

@_PAGE_PPN_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GPFN_IO_MASK = common dso_local global i64 0, align 8
@VTLB_PTE_IO = common dso_local global i64 0, align 8
@_PAGE_MA_MASK = common dso_local global i64 0, align 8
@_PAGE_MA_NAT = common dso_local global i64 0, align 8
@GPFN_PHYS_MMIO = common dso_local global i64 0, align 8
@tc_regions = common dso_local global i32 0, align 4
@PAGE_FLAGS_RV_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thash_purge_and_insert(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %union.ia64_rr, align 8
  %16 = alloca %union.ia64_rr, align 8
  %17 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load i64, i64* %8, align 8
  %19 = call i64 @itir_ps(i64 %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @vcpu_get_rr(%struct.kvm_vcpu* %20, i64 %21)
  %23 = bitcast %union.ia64_rr* %15 to i32*
  store i32 %22, i32* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @ia64_get_rr(i64 %24)
  %26 = bitcast %union.ia64_rr* %16 to i32*
  store i32 %25, i32* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @_PAGE_PPN_MASK, align 8
  %29 = and i64 %27, %28
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = ashr i64 %29, %30
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i64 @kvm_get_mpt_entry(i64 %32)
  %34 = load i64, i64* @GPFN_IO_MASK, align 8
  %35 = and i64 %33, %34
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @translate_phy_pte(i64* %7, i64 %36, i64 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @VTLB_PTE_IO, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %5
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @_PAGE_MA_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* @_PAGE_MA_NAT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @GPFN_PHYS_MMIO, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i64, i64* @_PAGE_MA_MASK, align 8
  %55 = xor i64 %54, -1
  %56 = load i64, i64* %7, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* @_PAGE_MA_MASK, align 8
  %59 = xor i64 %58, -1
  %60 = load i64, i64* %12, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %53, %49, %43, %5
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @vtlb_purge(%struct.kvm_vcpu* %63, i64 %64, i64 %65)
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @vhpt_purge(%struct.kvm_vcpu* %67, i64 %68, i64 %69)
  %71 = load i64, i64* %11, align 8
  %72 = bitcast %union.ia64_rr* %16 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %71, %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %62
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @VTLB_PTE_IO, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75, %62
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @vtlb_insert(%struct.kvm_vcpu* %81, i64 %82, i64 %83, i64 %84)
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %87 = load i32, i32* @tc_regions, align 4
  %88 = call i32 @VMX(%struct.kvm_vcpu* %86, i32 %87)
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @vcpu_quick_region_set(i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %80, %75
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @VTLB_PTE_IO, align 8
  %94 = and i64 %92, %93
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %132

97:                                               ; preds = %91
  %98 = load i64, i64* %11, align 8
  %99 = bitcast %union.ia64_rr* %16 to i64*
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @vhpt_insert(i64 %103, i64 %104, i64 %105, i64 %106)
  br label %122

108:                                              ; preds = %97
  %109 = load i64, i64* @PAGE_FLAGS_RV_MASK, align 8
  %110 = xor i64 %109, -1
  %111 = load i64, i64* %12, align 8
  %112 = and i64 %111, %110
  store i64 %112, i64* %12, align 8
  %113 = call i64 (...) @ia64_clear_ic()
  store i64 %113, i64* %17, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %12, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @ia64_itc(i32 %114, i64 %115, i64 %116, i64 %117)
  %119 = call i32 (...) @paravirt_dv_serialize_data()
  %120 = load i64, i64* %17, align 8
  %121 = call i32 @ia64_set_psr(i64 %120)
  br label %122

122:                                              ; preds = %108, %102
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* @VTLB_PTE_IO, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* %11, align 8
  %131 = call i32 @mark_pages_dirty(%struct.kvm_vcpu* %128, i64 %129, i64 %130)
  br label %132

132:                                              ; preds = %96, %127, %122
  ret void
}

declare dso_local i64 @itir_ps(i64) #1

declare dso_local i32 @vcpu_get_rr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @ia64_get_rr(i64) #1

declare dso_local i64 @kvm_get_mpt_entry(i64) #1

declare dso_local i64 @translate_phy_pte(i64*, i64, i64) #1

declare dso_local i32 @vtlb_purge(%struct.kvm_vcpu*, i64, i64) #1

declare dso_local i32 @vhpt_purge(%struct.kvm_vcpu*, i64, i64) #1

declare dso_local i32 @vtlb_insert(%struct.kvm_vcpu*, i64, i64, i64) #1

declare dso_local i32 @vcpu_quick_region_set(i32, i64) #1

declare dso_local i32 @VMX(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vhpt_insert(i64, i64, i64, i64) #1

declare dso_local i64 @ia64_clear_ic(...) #1

declare dso_local i32 @ia64_itc(i32, i64, i64, i64) #1

declare dso_local i32 @paravirt_dv_serialize_data(...) #1

declare dso_local i32 @ia64_set_psr(i64) #1

declare dso_local i32 @mark_pages_dirty(%struct.kvm_vcpu*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
