; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_cpuid_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_cpuid_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { i32, i64, i32*, i32, i64, i32, i32 }
%struct.kvm_cpuid_entry2 = type { i32, i64, i32 }

@KVM_PMC_GP = common dso_local global i64 0, align 8
@KVM_PMC_FIXED = common dso_local global i64 0, align 8
@X86_PMC_MAX_GENERIC = common dso_local global i32 0, align 4
@X86_PMC_MAX_FIXED = common dso_local global i32 0, align 4
@X86_PMC_IDX_FIXED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_pmu_cpuid_update(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_pmu*, align 8
  %4 = alloca %struct.kvm_cpuid_entry2*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.kvm_pmu* %8, %struct.kvm_pmu** %3, align 8
  %9 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @KVM_PMC_GP, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  store i32 0, i32* %17, align 4
  %18 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @KVM_PMC_FIXED, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %23, i32 0, i32 3
  store i32 0, i32* %24, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu* %25, i32 10, i32 0)
  store %struct.kvm_cpuid_entry2* %26, %struct.kvm_cpuid_entry2** %4, align 8
  %27 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %28 = icmp ne %struct.kvm_cpuid_entry2* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %133

30:                                               ; preds = %1
  %31 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 255
  %35 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %38 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  br label %133

42:                                               ; preds = %30
  %43 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = load i32, i32* @X86_PMC_MAX_GENERIC, align 4
  %49 = call i8* @min(i32 %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %54 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  %60 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @KVM_PMC_GP, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %66 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 24
  %69 = and i32 %68, 255
  store i32 %69, i32* %5, align 4
  %70 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = xor i64 %72, -1
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = shl i64 1, %75
  %77 = sub i64 %76, 1
  %78 = and i64 %73, %77
  %79 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %80 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %79, i32 0, i32 4
  store i64 %78, i64* %80, align 8
  %81 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %82 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %93

85:                                               ; preds = %42
  %86 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %87 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 1, %88
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %92 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  br label %133

93:                                               ; preds = %42
  %94 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %95 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 31
  %98 = load i32, i32* @X86_PMC_MAX_FIXED, align 4
  %99 = call i8* @min(i32 %97, i32 %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %102 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  %103 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %104 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %105, 5
  %107 = and i32 %106, 255
  %108 = shl i32 1, %107
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %111 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* @KVM_PMC_FIXED, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %109, i32* %114, align 4
  %115 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %116 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = shl i32 1, %117
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %122 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = shl i64 1, %123
  %125 = sub i64 %124, 1
  %126 = load i64, i64* @X86_PMC_IDX_FIXED, align 8
  %127 = shl i64 %125, %126
  %128 = or i64 %120, %127
  %129 = xor i64 %128, -1
  %130 = trunc i64 %129 to i32
  %131 = load %struct.kvm_pmu*, %struct.kvm_pmu** %3, align 8
  %132 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %93, %85, %41, %29
  ret void
}

declare dso_local %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i8* @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
