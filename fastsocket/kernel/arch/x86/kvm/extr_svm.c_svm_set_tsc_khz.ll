; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_set_tsc_khz.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_set_tsc_khz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vcpu_svm = type { i32 }

@SVM_FEATURE_TSC_RATE = common dso_local global i32 0, align 4
@TSC_RATIO_DEFAULT = common dso_local global i32 0, align 4
@tsc_khz = common dso_local global i32 0, align 4
@TSC_RATIO_RSVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Invalid TSC ratio - virtual-tsc-khz=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64)* @svm_set_tsc_khz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_set_tsc_khz(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vcpu_svm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %8)
  store %struct.vcpu_svm* %9, %struct.vcpu_svm** %5, align 8
  %10 = load i32, i32* @SVM_FEATURE_TSC_RATE, align 4
  %11 = call i32 @svm_has(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %50

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @TSC_RATIO_DEFAULT, align 4
  %22 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %23 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %50

24:                                               ; preds = %14
  %25 = load i64, i64* %4, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %27, 32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @tsc_khz, align 4
  %31 = call i32 @do_div(i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @TSC_RATIO_RSVD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %24
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %50

42:                                               ; preds = %34
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.vcpu_svm*, %struct.vcpu_svm** %5, align 8
  %49 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %39, %17, %13
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @svm_has(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
