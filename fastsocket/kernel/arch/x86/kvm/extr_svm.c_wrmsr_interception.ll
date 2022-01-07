; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_wrmsr_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_wrmsr_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.msr_data = type { i32, i32, i32 }

@VCPU_REGS_RCX = common dso_local global i64 0, align 8
@VCPU_REGS_RAX = common dso_local global i64 0, align 8
@VCPU_REGS_RDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @wrmsr_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrmsr_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca %struct.msr_data, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %6 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %7 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @VCPU_REGS_RCX, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  %14 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %15 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @VCPU_REGS_RAX, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %23 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @VCPU_REGS_RDX, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 32
  %31 = or i32 %21, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @trace_kvm_msr_write(i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %3, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %3, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %3, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %41 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %40, i32 0, i32 0
  %42 = call i64 @kvm_rip_read(%struct.TYPE_7__* %41)
  %43 = add nsw i64 %42, 2
  %44 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %45 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %47 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %46, i32 0, i32 0
  %48 = call i64 @svm_set_msr(%struct.TYPE_7__* %47, %struct.msr_data* %3)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %52 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %51, i32 0, i32 0
  %53 = call i32 @kvm_inject_gp(%struct.TYPE_7__* %52, i32 0)
  br label %58

54:                                               ; preds = %1
  %55 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %56 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %55, i32 0, i32 0
  %57 = call i32 @skip_emulated_instruction(%struct.TYPE_7__* %56)
  br label %58

58:                                               ; preds = %54, %50
  ret i32 1
}

declare dso_local i32 @trace_kvm_msr_write(i32, i32) #1

declare dso_local i64 @kvm_rip_read(%struct.TYPE_7__*) #1

declare dso_local i64 @svm_set_msr(%struct.TYPE_7__*, %struct.msr_data*) #1

declare dso_local i32 @kvm_inject_gp(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @skip_emulated_instruction(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
