; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_clgi_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_clgi_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@V_IRQ_MASK = common dso_local global i32 0, align 4
@VMCB_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @clgi_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clgi_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vcpu_svm*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  %4 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %5 = call i64 @nested_svm_check_permissions(%struct.vcpu_svm* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %10 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %9, i32 0, i32 1
  %11 = call i64 @kvm_rip_read(i32* %10)
  %12 = add nsw i64 %11, 3
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %15, i32 0, i32 1
  %17 = call i32 @skip_emulated_instruction(i32* %16)
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %19 = call i32 @disable_gif(%struct.vcpu_svm* %18)
  %20 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %21 = call i32 @svm_clear_vintr(%struct.vcpu_svm* %20)
  %22 = load i32, i32* @V_IRQ_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %25 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %23
  store i32 %30, i32* %28, align 4
  %31 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %32 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* @VMCB_INTR, align 4
  %35 = call i32 @mark_dirty(%struct.TYPE_4__* %33, i32 %34)
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %8, %7
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @nested_svm_check_permissions(%struct.vcpu_svm*) #1

declare dso_local i64 @kvm_rip_read(i32*) #1

declare dso_local i32 @skip_emulated_instruction(i32*) #1

declare dso_local i32 @disable_gif(%struct.vcpu_svm*) #1

declare dso_local i32 @svm_clear_vintr(%struct.vcpu_svm*) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
