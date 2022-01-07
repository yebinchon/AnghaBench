; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_prepare_memory_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_arch_prepare_memory_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_memory_slot = type { i32, i64, i64* }
%struct.kvm_userspace_memory_region = type { i32 }

@KVM_MAX_MEM_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@_PAGE_AR_RWX = common dso_local global i32 0, align 4
@_PAGE_MA_WB = common dso_local global i32 0, align 4
@GPFN_PHYS_MMIO = common dso_local global i64 0, align 8
@_PAGE_MA_UC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_prepare_memory_region(%struct.kvm* %0, %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot* byval(%struct.kvm_memory_slot) align 8 %2, %struct.kvm_userspace_memory_region* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm*, align 8
  %8 = alloca %struct.kvm_memory_slot*, align 8
  %9 = alloca %struct.kvm_userspace_memory_region*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.kvm* %0, %struct.kvm** %7, align 8
  store %struct.kvm_memory_slot* %1, %struct.kvm_memory_slot** %8, align 8
  store %struct.kvm_userspace_memory_region* %3, %struct.kvm_userspace_memory_region** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %16 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %13, align 4
  %18 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %19 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %14, align 8
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %21, %23
  %25 = load i64, i64* @KVM_MAX_MEM_SIZE, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = icmp ugt i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %88

32:                                               ; preds = %5
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %84, %32
  %34 = load i64, i64* %11, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %38, label %87

38:                                               ; preds = %33
  %39 = load %struct.kvm*, %struct.kvm** %7, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = call i64 @gfn_to_pfn(%struct.kvm* %39, i64 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @kvm_is_mmio_pfn(i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %38
  %48 = load %struct.kvm*, %struct.kvm** %7, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @PAGE_SHIFT, align 8
  %54 = shl i64 %52, %53
  %55 = load i32, i32* @_PAGE_AR_RWX, align 4
  %56 = load i32, i32* @_PAGE_MA_WB, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @kvm_set_pmt_entry(%struct.kvm* %48, i64 %51, i64 %54, i32 %57)
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @pfn_to_page(i64 %59)
  %61 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %62 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %60, i64* %65, align 8
  br label %83

66:                                               ; preds = %38
  %67 = load %struct.kvm*, %struct.kvm** %7, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* @GPFN_PHYS_MMIO, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @PAGE_SHIFT, align 8
  %74 = shl i64 %72, %73
  %75 = or i64 %71, %74
  %76 = load i32, i32* @_PAGE_MA_UC, align 4
  %77 = call i32 @kvm_set_pmt_entry(%struct.kvm* %67, i64 %70, i64 %75, i32 %76)
  %78 = load %struct.kvm_memory_slot*, %struct.kvm_memory_slot** %8, align 8
  %79 = getelementptr inbounds %struct.kvm_memory_slot, %struct.kvm_memory_slot* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %66, %47
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %33

87:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %29
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i64 @gfn_to_pfn(%struct.kvm*, i64) #1

declare dso_local i32 @kvm_is_mmio_pfn(i64) #1

declare dso_local i32 @kvm_set_pmt_entry(%struct.kvm*, i64, i64, i32) #1

declare dso_local i64 @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
