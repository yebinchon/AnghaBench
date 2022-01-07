; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_tdp_page_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_tdp_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PFERR_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32)* @tdp_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdp_page_fault(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = call i32 @ASSERT(%struct.kvm_vcpu* %16)
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.kvm_vcpu* @VALID_PAGE(i32 %22)
  %24 = call i32 @ASSERT(%struct.kvm_vcpu* %23)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %26 = call i32 @mmu_topup_memory_caches(%struct.kvm_vcpu* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %99

31:                                               ; preds = %3
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = call i32 (...) @smp_rmb()
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @mapping_level(%struct.kvm_vcpu* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @KVM_PAGES_PER_HPAGE(i32 %41)
  %43 = sub nsw i32 %42, 1
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @gfn_to_pfn(%struct.TYPE_7__* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @is_error_pfn(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %31
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @kvm_handle_bad_page(%struct.TYPE_7__* %58, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %99

62:                                               ; preds = %31
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i64 @mmu_notifier_retry(%struct.kvm_vcpu* %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  br label %91

73:                                               ; preds = %62
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %75 = call i32 @kvm_mmu_free_some_pages(%struct.kvm_vcpu* %74)
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @PFERR_WRITE_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @__direct_map(%struct.kvm_vcpu* %76, i32 %77, i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %99

91:                                               ; preds = %72
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %93 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @kvm_release_pfn_clean(i32 %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %91, %73, %55, %29
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @ASSERT(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_vcpu* @VALID_PAGE(i32) #1

declare dso_local i32 @mmu_topup_memory_caches(%struct.kvm_vcpu*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @mapping_level(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @KVM_PAGES_PER_HPAGE(i32) #1

declare dso_local i32 @gfn_to_pfn(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @is_error_pfn(i32) #1

declare dso_local i32 @kvm_handle_bad_page(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mmu_notifier_retry(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_mmu_free_some_pages(%struct.kvm_vcpu*) #1

declare dso_local i32 @__direct_map(%struct.kvm_vcpu*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_release_pfn_clean(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
