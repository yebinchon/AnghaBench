; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_get_msr_mtrr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_get_msr_mtrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MSR_MTRRdefType = common dso_local global i64 0, align 8
@MSR_MTRRfix64K_00000 = common dso_local global i64 0, align 8
@MSR_MTRRfix16K_80000 = common dso_local global i64 0, align 8
@MSR_MTRRfix16K_A0000 = common dso_local global i64 0, align 8
@MSR_MTRRfix4K_C0000 = common dso_local global i64 0, align 8
@MSR_MTRRfix4K_F8000 = common dso_local global i64 0, align 8
@MSR_IA32_CR_PAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i64*)* @get_msr_mtrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_msr_mtrr(%struct.kvm_vcpu* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = bitcast i32* %15 to i64*
  store i64* %16, i64** %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @msr_mtrr_valid(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %138

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @MSR_MTRRdefType, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 10
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %30, %37
  %39 = load i64*, i64** %7, align 8
  store i64 %38, i64* %39, align 8
  br label %137

40:                                               ; preds = %21
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @MSR_MTRRfix64K_00000, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %7, align 8
  store i64 %47, i64* %48, align 8
  br label %136

49:                                               ; preds = %40
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @MSR_MTRRfix16K_80000, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @MSR_MTRRfix16K_A0000, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53, %49
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 1, %59
  %61 = load i64, i64* @MSR_MTRRfix16K_80000, align 8
  %62 = sub nsw i64 %60, %61
  %63 = getelementptr inbounds i64, i64* %58, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %7, align 8
  store i64 %64, i64* %65, align 8
  br label %135

66:                                               ; preds = %53
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @MSR_MTRRfix4K_C0000, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @MSR_MTRRfix4K_F8000, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i64*, i64** %8, align 8
  %76 = load i64, i64* %6, align 8
  %77 = add nsw i64 3, %76
  %78 = load i64, i64* @MSR_MTRRfix4K_C0000, align 8
  %79 = sub nsw i64 %77, %78
  %80 = getelementptr inbounds i64, i64* %75, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  br label %134

83:                                               ; preds = %70, %66
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @MSR_IA32_CR_PAT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %7, align 8
  store i64 %91, i64* %92, align 8
  br label %133

93:                                               ; preds = %83
  %94 = load i64, i64* %6, align 8
  %95 = sub nsw i64 %94, 512
  %96 = sdiv i64 %95, 2
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %9, align 4
  %98 = load i64, i64* %6, align 8
  %99 = sub nsw i64 %98, 512
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 2, %100
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %99, %102
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %93
  %108 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %109 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = bitcast i32* %116 to i64*
  store i64* %117, i64** %11, align 8
  br label %129

118:                                              ; preds = %93
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %120 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = bitcast i32* %127 to i64*
  store i64* %128, i64** %11, align 8
  br label %129

129:                                              ; preds = %118, %107
  %130 = load i64*, i64** %11, align 8
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %7, align 8
  store i64 %131, i64* %132, align 8
  br label %133

133:                                              ; preds = %129, %87
  br label %134

134:                                              ; preds = %133, %74
  br label %135

135:                                              ; preds = %134, %57
  br label %136

136:                                              ; preds = %135, %44
  br label %137

137:                                              ; preds = %136, %25
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %20
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @msr_mtrr_valid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
