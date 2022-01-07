; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_enable_irq_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_enable_irq_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Trying to open IRQ window\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @enable_irq_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_irq_window(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %4)
  store %struct.vcpu_svm* %5, %struct.vcpu_svm** %3, align 8
  %6 = call i32 @nsvm_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %8 = call i32 @nested_svm_intr(%struct.vcpu_svm* %7)
  %9 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %10 = call i64 @gif_set(%struct.vcpu_svm* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %14 = call i32 @svm_set_vintr(%struct.vcpu_svm* %13)
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %16 = call i32 @svm_inject_irq(%struct.vcpu_svm* %15, i32 0)
  br label %17

17:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @nsvm_printk(i8*) #1

declare dso_local i32 @nested_svm_intr(%struct.vcpu_svm*) #1

declare dso_local i64 @gif_set(%struct.vcpu_svm*) #1

declare dso_local i32 @svm_set_vintr(%struct.vcpu_svm*) #1

declare dso_local i32 @svm_inject_irq(%struct.vcpu_svm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
