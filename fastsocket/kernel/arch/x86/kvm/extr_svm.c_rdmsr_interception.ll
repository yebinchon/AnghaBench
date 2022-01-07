; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_rdmsr_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_rdmsr_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@VCPU_REGS_RCX = common dso_local global i64 0, align 8
@VCPU_REGS_RAX = common dso_local global i64 0, align 8
@VCPU_REGS_RDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @rdmsr_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdmsr_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @VCPU_REGS_RCX, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 0
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @svm_get_msr(%struct.TYPE_7__* %14, i32 %15, i32* %4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %19, i32 0, i32 0
  %21 = call i32 @kvm_inject_gp(%struct.TYPE_7__* %20, i32 0)
  br label %52

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @trace_kvm_msr_read(i32 %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %28 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @VCPU_REGS_RAX, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %26, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 32
  %36 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %37 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @VCPU_REGS_RDX, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %35, i32* %42, align 4
  %43 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %44 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %43, i32 0, i32 0
  %45 = call i64 @kvm_rip_read(%struct.TYPE_7__* %44)
  %46 = add nsw i64 %45, 2
  %47 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %48 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %50 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %49, i32 0, i32 0
  %51 = call i32 @skip_emulated_instruction(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %22, %18
  ret i32 1
}

declare dso_local i64 @svm_get_msr(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @kvm_inject_gp(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @trace_kvm_msr_read(i32, i32) #1

declare dso_local i64 @kvm_rip_read(%struct.TYPE_7__*) #1

declare dso_local i32 @skip_emulated_instruction(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
