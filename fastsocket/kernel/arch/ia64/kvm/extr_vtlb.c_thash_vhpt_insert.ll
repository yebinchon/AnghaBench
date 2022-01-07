; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_thash_vhpt_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vtlb.c_thash_vhpt_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%union.ia64_rr = type { i64 }

@PAGE_FLAGS_RV_MASK = common dso_local global i32 0, align 4
@VTLB_PTE_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thash_vhpt_insert(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.ia64_rr, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @ia64_get_rr(i32 %14)
  %16 = bitcast %union.ia64_rr* %13 to i32*
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @translate_phy_pte(i32* %7, i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @itir_ps(i32 %20)
  %22 = bitcast %union.ia64_rr* %13 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @vhpt_insert(i32 %26, i32 %27, i32 %28, i32 %29)
  br label %46

31:                                               ; preds = %5
  %32 = load i32, i32* @PAGE_FLAGS_RV_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = call i32 (...) @ia64_clear_ic()
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @itir_ps(i32 %40)
  %42 = call i32 @ia64_itc(i32 %37, i32 %38, i32 %39, i64 %41)
  %43 = call i32 (...) @paravirt_dv_serialize_data()
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @ia64_set_psr(i32 %44)
  br label %46

46:                                               ; preds = %31, %25
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @VTLB_PTE_IO, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @itir_ps(i32 %54)
  %56 = call i32 @mark_pages_dirty(%struct.kvm_vcpu* %52, i32 %53, i64 %55)
  br label %57

57:                                               ; preds = %51, %46
  ret void
}

declare dso_local i32 @ia64_get_rr(i32) #1

declare dso_local i32 @translate_phy_pte(i32*, i32, i32) #1

declare dso_local i64 @itir_ps(i32) #1

declare dso_local i32 @vhpt_insert(i32, i32, i32, i32) #1

declare dso_local i32 @ia64_clear_ic(...) #1

declare dso_local i32 @ia64_itc(i32, i32, i32, i64) #1

declare dso_local i32 @paravirt_dv_serialize_data(...) #1

declare dso_local i32 @ia64_set_psr(i32) #1

declare dso_local i32 @mark_pages_dirty(%struct.kvm_vcpu*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
