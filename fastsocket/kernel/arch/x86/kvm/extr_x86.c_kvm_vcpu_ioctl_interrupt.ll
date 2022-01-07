; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vcpu_ioctl_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_interrupt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_interrupt*)* @kvm_vcpu_ioctl_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vcpu_ioctl_interrupt(%struct.kvm_vcpu* %0, %struct.kvm_interrupt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_interrupt*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_interrupt* %1, %struct.kvm_interrupt** %5, align 8
  %6 = load %struct.kvm_interrupt*, %struct.kvm_interrupt** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_interrupt, %struct.kvm_interrupt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.kvm_interrupt*, %struct.kvm_interrupt** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_interrupt, %struct.kvm_interrupt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 256
  br i1 %14, label %15, label %18

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %37

18:                                               ; preds = %10
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @irqchip_in_kernel(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %18
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %29 = call i32 @vcpu_load(%struct.kvm_vcpu* %28)
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = load %struct.kvm_interrupt*, %struct.kvm_interrupt** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_interrupt, %struct.kvm_interrupt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kvm_queue_interrupt(%struct.kvm_vcpu* %30, i32 %33, i32 0)
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %36 = call i32 @vcpu_put(%struct.kvm_vcpu* %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %24, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @irqchip_in_kernel(i32) #1

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_interrupt(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
