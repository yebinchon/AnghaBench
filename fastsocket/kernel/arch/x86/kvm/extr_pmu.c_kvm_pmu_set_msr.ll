; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_set_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_pmu.c_kvm_pmu_set_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_pmu }
%struct.kvm_pmu = type { i32, i32, i32, i32, i32 }
%struct.msr_data = type { i32, i32, i32 }
%struct.kvm_pmc = type { i32, i32 }

@MSR_IA32_PERFCTR0 = common dso_local global i32 0, align 4
@MSR_P6_EVNTSEL0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_pmu_set_msr(%struct.kvm_vcpu* %0, %struct.msr_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.msr_data*, align 8
  %6 = alloca %struct.kvm_pmu*, align 8
  %7 = alloca %struct.kvm_pmc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.msr_data* %1, %struct.msr_data** %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.kvm_pmu* %12, %struct.kvm_pmu** %6, align 8
  %13 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %14 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %17 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %93 [
    i32 131, label %20
    i32 128, label %37
    i32 130, label %47
    i32 129, label %66
  ]

20:                                               ; preds = %2
  %21 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %22 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %146

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, -3004
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @reprogram_fixed_counters(%struct.kvm_pmu* %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %146

36:                                               ; preds = %27
  br label %145

37:                                               ; preds = %2
  %38 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %39 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %45 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %146

46:                                               ; preds = %37
  br label %145

47:                                               ; preds = %2
  %48 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %49 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %146

54:                                               ; preds = %47
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %57 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @global_ctrl_changed(%struct.kvm_pmu* %62, i32 %63)
  store i32 0, i32* %3, align 4
  br label %146

65:                                               ; preds = %54
  br label %145

66:                                               ; preds = %2
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %70 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %72, 4611686018427387903
  %74 = and i64 %68, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %66
  %77 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %78 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %85 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %81, %76
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %91 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  store i32 0, i32* %3, align 4
  br label %146

92:                                               ; preds = %66
  br label %145

93:                                               ; preds = %2
  %94 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @MSR_IA32_PERFCTR0, align 4
  %97 = call %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu* %94, i32 %95, i32 %96)
  store %struct.kvm_pmc* %97, %struct.kvm_pmc** %7, align 8
  %98 = icmp ne %struct.kvm_pmc* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %93
  %100 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu* %100, i32 %101)
  store %struct.kvm_pmc* %102, %struct.kvm_pmc** %7, align 8
  %103 = icmp ne %struct.kvm_pmc* %102, null
  br i1 %103, label %104, label %120

104:                                              ; preds = %99, %93
  %105 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %106 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %114 = call i32 @read_pmc(%struct.kvm_pmc* %113)
  %115 = sub nsw i32 %112, %114
  %116 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %117 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %115
  store i32 %119, i32* %117, align 4
  store i32 0, i32* %3, align 4
  br label %146

120:                                              ; preds = %99
  %121 = load %struct.kvm_pmu*, %struct.kvm_pmu** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @MSR_P6_EVNTSEL0, align 4
  %124 = call %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu* %121, i32 %122, i32 %123)
  store %struct.kvm_pmc* %124, %struct.kvm_pmc** %7, align 8
  %125 = icmp ne %struct.kvm_pmc* %124, null
  br i1 %125, label %126, label %143

126:                                              ; preds = %120
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %129 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %146

133:                                              ; preds = %126
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = and i64 %135, -4292870144
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %133
  %139 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @reprogram_gp_counter(%struct.kvm_pmc* %139, i32 %140)
  store i32 0, i32* %3, align 4
  br label %146

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %120
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144, %92, %65, %46, %36
  store i32 1, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %138, %132, %111, %88, %61, %53, %42, %32, %26
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @reprogram_fixed_counters(%struct.kvm_pmu*, i32) #1

declare dso_local i32 @global_ctrl_changed(%struct.kvm_pmu*, i32) #1

declare dso_local %struct.kvm_pmc* @get_gp_pmc(%struct.kvm_pmu*, i32, i32) #1

declare dso_local %struct.kvm_pmc* @get_fixed_pmc(%struct.kvm_pmu*, i32) #1

declare dso_local i32 @read_pmc(%struct.kvm_pmc*) #1

declare dso_local i32 @reprogram_gp_counter(%struct.kvm_pmc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
