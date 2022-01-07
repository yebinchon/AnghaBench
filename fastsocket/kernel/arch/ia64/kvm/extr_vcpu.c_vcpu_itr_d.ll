; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_itr_d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_itr_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.thash_data = type { i32 }

@PAGE_FLAGS_RV_MASK = common dso_local global i64 0, align 8
@_PAGE_SIZE_16M = common dso_local global i64 0, align 8
@_PAGE_PPN_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@VTLB_PTE_IO = common dso_local global i64 0, align 8
@RR_RID_MASK = common dso_local global i64 0, align 8
@dtr_regions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcpu_itr_d(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.thash_data*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i64 @itir_ps(i64 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %12, align 8
  %20 = call i64 @PAGEALIGN(i64 %18, i64 %19)
  store i64 %20, i64* %13, align 8
  %21 = load i64, i64* @PAGE_FLAGS_RV_MASK, align 8
  %22 = xor i64 %21, -1
  %23 = load i64, i64* %8, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @_PAGE_SIZE_16M, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @thash_purge_entries(%struct.kvm_vcpu* %29, i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %28, %5
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @_PAGE_PPN_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = ashr i64 %36, %37
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @__gpfn_is_io(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i64, i64* @VTLB_PTE_IO, align 8
  %44 = load i64, i64* %8, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i64 @vcpu_get_rr(%struct.kvm_vcpu* %47, i64 %48)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @RR_RID_MASK, align 8
  %52 = and i64 %50, %51
  store i64 %52, i64* %14, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %54 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = bitcast i32* %58 to %struct.thash_data*
  store %struct.thash_data* %59, %struct.thash_data** %15, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = bitcast i32* %65 to %struct.thash_data*
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = call i32 @vcpu_set_tr(%struct.thash_data* %66, i64 %67, i64 %68, i64 %69, i64 %70)
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %73 = load i32, i32* @dtr_regions, align 4
  %74 = call i32 @VMX(%struct.kvm_vcpu* %72, i32 %73)
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @vcpu_quick_region_set(i32 %74, i64 %75)
  ret void
}

declare dso_local i64 @itir_ps(i64) #1

declare dso_local i64 @PAGEALIGN(i64, i64) #1

declare dso_local i32 @thash_purge_entries(%struct.kvm_vcpu*, i64, i64) #1

declare dso_local i64 @__gpfn_is_io(i64) #1

declare dso_local i64 @vcpu_get_rr(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vcpu_set_tr(%struct.thash_data*, i64, i64, i64, i64) #1

declare dso_local i32 @vcpu_quick_region_set(i32, i64) #1

declare dso_local i32 @VMX(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
