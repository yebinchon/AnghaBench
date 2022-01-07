; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_interrupt_window_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_interrupt_window_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__, i32, %struct.kvm_run* }
%struct.TYPE_5__ = type { i32 }
%struct.kvm_run = type { i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@V_IRQ_MASK = common dso_local global i32 0, align 4
@VMCB_INTR = common dso_local global i32 0, align 4
@KVM_EXIT_IRQ_WINDOW_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @interrupt_window_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupt_window_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %6 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %8 = load %struct.kvm_run*, %struct.kvm_run** %7, align 8
  store %struct.kvm_run* %8, %struct.kvm_run** %4, align 8
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %10 = call i32 @svm_clear_vintr(%struct.vcpu_svm* %9)
  %11 = load i32, i32* @V_IRQ_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %12
  store i32 %19, i32* %17, align 4
  %20 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %21 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = load i32, i32* @VMCB_INTR, align 4
  %24 = call i32 @mark_dirty(%struct.TYPE_7__* %22, i32 %23)
  %25 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %26 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @irqchip_in_kernel(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %1
  %32 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %38 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %37, i32 0, i32 0
  %39 = call i32 @kvm_cpu_has_interrupt(%struct.TYPE_8__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36
  %42 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %43 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @KVM_EXIT_IRQ_WINDOW_OPEN, align 4
  %49 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %2, align 4
  br label %52

51:                                               ; preds = %36, %31, %1
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @svm_clear_vintr(%struct.vcpu_svm*) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @irqchip_in_kernel(i32) #1

declare dso_local i32 @kvm_cpu_has_interrupt(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
