; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_vm_ioctl_set_irqchip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_vm_ioctl_set_irqchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_irqchip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_irqchip*)* @kvm_vm_ioctl_set_irqchip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_set_irqchip(%struct.kvm* %0, %struct.kvm_irqchip* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_irqchip*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_irqchip* %1, %struct.kvm_irqchip** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 128, label %9
  ]

9:                                                ; preds = %2
  %10 = load %struct.kvm*, %struct.kvm** %3, align 8
  %11 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @kvm_set_ioapic(%struct.kvm* %10, i32* %13)
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @kvm_set_ioapic(%struct.kvm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
