; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_itr_i.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_vcpu_itr_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.thash_data = type { i32 }

@PAGE_FLAGS_RV_MASK = common dso_local global i64 0, align 8
@RR_RID_MASK = common dso_local global i64 0, align 8
@itr_regions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcpu_itr_i(%struct.kvm_vcpu* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.thash_data*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i64 @itir_ps(i64 %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i64 @PAGEALIGN(i64 %17, i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* @PAGE_FLAGS_RV_MASK, align 8
  %21 = xor i64 %20, -1
  %22 = load i64, i64* %8, align 8
  %23 = and i64 %22, %21
  store i64 %23, i64* %8, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @vcpu_get_rr(%struct.kvm_vcpu* %24, i64 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @RR_RID_MASK, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %13, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = bitcast i32* %35 to %struct.thash_data*
  store %struct.thash_data* %36, %struct.thash_data** %14, align 8
  %37 = load %struct.thash_data*, %struct.thash_data** %14, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = call i32 @vcpu_set_tr(%struct.thash_data* %37, i64 %38, i64 %39, i64 %40, i64 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %44 = load i32, i32* @itr_regions, align 4
  %45 = call i32 @VMX(%struct.kvm_vcpu* %43, i32 %44)
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @vcpu_quick_region_set(i32 %45, i64 %46)
  ret void
}

declare dso_local i64 @itir_ps(i64) #1

declare dso_local i64 @PAGEALIGN(i64, i64) #1

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
