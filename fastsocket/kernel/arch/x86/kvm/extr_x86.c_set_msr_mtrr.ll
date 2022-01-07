; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_set_msr_mtrr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_set_msr_mtrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MSR_MTRRdefType = common dso_local global i64 0, align 8
@MSR_MTRRfix64K_00000 = common dso_local global i64 0, align 8
@MSR_MTRRfix16K_80000 = common dso_local global i64 0, align 8
@MSR_MTRRfix16K_A0000 = common dso_local global i64 0, align 8
@MSR_MTRRfix4K_C0000 = common dso_local global i64 0, align 8
@MSR_MTRRfix4K_F8000 = common dso_local global i64 0, align 8
@MSR_IA32_CR_PAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32)* @set_msr_mtrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_msr_mtrr(%struct.kvm_vcpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  store i32* %15, i32** %8, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @mtrr_valid(%struct.kvm_vcpu* %16, i64 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %132

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @MSR_MTRRdefType, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 3072
  %34 = ashr i32 %33, 10
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  br label %129

39:                                               ; preds = %22
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @MSR_MTRRfix64K_00000, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 %44, i32* %46, align 4
  br label %128

47:                                               ; preds = %39
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @MSR_MTRRfix16K_80000, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @MSR_MTRRfix16K_A0000, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 1, %58
  %60 = load i64, i64* @MSR_MTRRfix16K_80000, align 8
  %61 = sub nsw i64 %59, %60
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  store i32 %56, i32* %62, align 4
  br label %127

63:                                               ; preds = %51
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @MSR_MTRRfix4K_C0000, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @MSR_MTRRfix4K_F8000, align 8
  %70 = icmp sle i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 3, %74
  %76 = load i64, i64* @MSR_MTRRfix4K_C0000, align 8
  %77 = sub nsw i64 %75, %76
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  store i32 %72, i32* %78, align 4
  br label %126

79:                                               ; preds = %67, %63
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @MSR_IA32_CR_PAT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  br label %125

88:                                               ; preds = %79
  %89 = load i64, i64* %6, align 8
  %90 = sub nsw i64 %89, 512
  %91 = sdiv i64 %90, 2
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %9, align 4
  %93 = load i64, i64* %6, align 8
  %94 = sub nsw i64 %93, 512
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 2, %95
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %94, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %88
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32* %111, i32** %11, align 8
  br label %122

112:                                              ; preds = %88
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32* %121, i32** %11, align 8
  br label %122

122:                                              ; preds = %112, %102
  %123 = load i32, i32* %7, align 4
  %124 = load i32*, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %83
  br label %126

126:                                              ; preds = %125, %71
  br label %127

127:                                              ; preds = %126, %55
  br label %128

128:                                              ; preds = %127, %43
  br label %129

129:                                              ; preds = %128, %26
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %131 = call i32 @kvm_mmu_reset_context(%struct.kvm_vcpu* %130)
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %129, %21
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i32 @mtrr_valid(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @kvm_mmu_reset_context(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
