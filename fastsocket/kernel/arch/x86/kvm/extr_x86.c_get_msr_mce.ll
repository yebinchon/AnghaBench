; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_get_msr_mce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_get_msr_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }

@MCG_CTL_P = common dso_local global i32 0, align 4
@MSR_IA32_MC0_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32*)* @get_msr_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_msr_mce(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 255
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %41 [
    i32 129, label %19
    i32 128, label %19
    i32 132, label %20
    i32 131, label %25
    i32 130, label %36
  ]

19:                                               ; preds = %3, %3
  store i32 0, i32* %8, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  br label %65

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MCG_CTL_P, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %68

31:                                               ; preds = %25
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  br label %65

36:                                               ; preds = %3
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  br label %65

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MSR_IA32_MC0_CTL, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MSR_IA32_MC0_CTL, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul i32 4, %48
  %50 = add i32 %47, %49
  %51 = icmp ult i32 %46, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MSR_IA32_MC0_CTL, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %57 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %45, %41
  store i32 1, i32* %4, align 4
  br label %68

65:                                               ; preds = %52, %36, %31, %20, %19
  %66 = load i32, i32* %8, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %65, %64, %30
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
