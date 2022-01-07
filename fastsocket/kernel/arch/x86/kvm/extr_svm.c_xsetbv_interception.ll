; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_xsetbv_interception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_xsetbv_interception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32, i64 }

@VCPU_REGS_RCX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*)* @xsetbv_interception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsetbv_interception(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %5 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %5, i32 0, i32 0
  %7 = call i32 @kvm_read_edx_eax(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %9 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %8, i32 0, i32 0
  %10 = load i32, i32* @VCPU_REGS_RCX, align 4
  %11 = call i32 @kvm_register_read(i32* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %13 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %12, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @kvm_set_xcr(i32* %13, i32 %14, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %20 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %19, i32 0, i32 0
  %21 = call i64 @kvm_rip_read(i32* %20)
  %22 = add nsw i64 %21, 3
  %23 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %24 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %26 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %25, i32 0, i32 0
  %27 = call i32 @skip_emulated_instruction(i32* %26)
  br label %28

28:                                               ; preds = %18, %1
  ret i32 1
}

declare dso_local i32 @kvm_read_edx_eax(i32*) #1

declare dso_local i32 @kvm_register_read(i32*, i32) #1

declare dso_local i64 @kvm_set_xcr(i32*, i32, i32) #1

declare dso_local i64 @kvm_rip_read(i32*) #1

declare dso_local i32 @skip_emulated_instruction(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
