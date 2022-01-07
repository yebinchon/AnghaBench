; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_dr_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_dr_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SVM_FEATURE_DECODE_ASSIST = common dso_local global i32 0, align 4
@SVM_EXITINFO_REG_MASK = common dso_local global i32 0, align 4
@SVM_EXIT_READ_DR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @dr_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @SVM_FEATURE_DECODE_ASSIST, align 4
  %9 = call i32 @svm_has(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = call i32 @emulate_on_interception(%struct.vcpu_svm* %12)
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SVM_EXITINFO_REG_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %4, align 4
  %23 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SVM_EXIT_READ_DR0, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 16
  br i1 %32, label %33, label %44

33:                                               ; preds = %14
  %34 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %35 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @kvm_register_read(i32* %35, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %39 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 16
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @svm_set_dr(i32* %39, i32 %41, i64 %42, i32* %7)
  br label %54

44:                                               ; preds = %14
  %45 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %46 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @svm_get_dr(i32* %46, i32 %47)
  store i64 %48, i64* %6, align 8
  %49 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %50 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %49, i32 0, i32 0
  %51 = load i32, i32* %4, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @kvm_register_write(i32* %50, i32 %51, i64 %52)
  br label %54

54:                                               ; preds = %44, %33
  %55 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %56 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %55, i32 0, i32 0
  %57 = call i32 @skip_emulated_instruction(i32* %56)
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @svm_has(i32) #1

declare dso_local i32 @emulate_on_interception(%struct.vcpu_svm*) #1

declare dso_local i64 @kvm_register_read(i32*, i32) #1

declare dso_local i32 @svm_set_dr(i32*, i32, i64, i32*) #1

declare dso_local i64 @svm_get_dr(i32*, i32) #1

declare dso_local i32 @kvm_register_write(i32*, i32, i64) #1

declare dso_local i32 @skip_emulated_instruction(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
