; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_update_cpuid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_update_cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_cpuid_entry2 = type { i32, i32 }

@cpu_has_xsave = common dso_local global i64 0, align 8
@X86_FEATURE_OSXSAVE = common dso_local global i32 0, align 4
@X86_CR4_OSXSAVE = common dso_local global i32 0, align 4
@X86_FEATURE_TSC_DEADLINE_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @update_cpuid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cpuid(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_cpuid_entry2*, align 8
  %4 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.kvm_lapic*, %struct.kvm_lapic** %7, align 8
  store %struct.kvm_lapic* %8, %struct.kvm_lapic** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %9, i32 1, i32 0)
  store %struct.kvm_cpuid_entry2* %10, %struct.kvm_cpuid_entry2** %3, align 8
  %11 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %3, align 8
  %12 = icmp ne %struct.kvm_cpuid_entry2* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %65

14:                                               ; preds = %1
  %15 = load i64, i64* @cpu_has_xsave, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load i32, i32* @X86_FEATURE_OSXSAVE, align 4
  %24 = call i32 @bit(i32 %23)
  %25 = xor i32 %24, -1
  %26 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %31 = load i32, i32* @X86_CR4_OSXSAVE, align 4
  %32 = call i64 @kvm_read_cr4_bits(%struct.kvm_vcpu* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %22
  %35 = load i32, i32* @X86_FEATURE_OSXSAVE, align 4
  %36 = call i32 @bit(i32 %35)
  %37 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %22
  br label %42

42:                                               ; preds = %41, %17, %14
  %43 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %44 = icmp ne %struct.kvm_lapic* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %3, align 8
  %47 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @X86_FEATURE_TSC_DEADLINE_TIMER, align 4
  %50 = call i32 @bit(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %55 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 393216, i32* %56, align 4
  br label %61

57:                                               ; preds = %45
  %58 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 131072, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %64 = call i32 @kvm_pmu_cpuid_update(%struct.kvm_vcpu* %63)
  br label %65

65:                                               ; preds = %62, %13
  ret void
}

declare dso_local %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @bit(i32) #1

declare dso_local i64 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_pmu_cpuid_update(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
