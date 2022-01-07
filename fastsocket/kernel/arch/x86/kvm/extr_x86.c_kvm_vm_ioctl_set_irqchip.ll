; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_set_irqchip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_vm_ioctl_set_irqchip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_irqchip = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32* }

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
  switch i32 %8, label %51 [
    i32 129, label %9
    i32 128, label %27
    i32 130, label %45
  ]

9:                                                ; preds = %2
  %10 = load %struct.kvm*, %struct.kvm** %3, align 8
  %11 = call %struct.TYPE_5__* @pic_irqchip(%struct.kvm* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.kvm*, %struct.kvm** %3, align 8
  %15 = call %struct.TYPE_5__* @pic_irqchip(%struct.kvm* %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = call i32 @memcpy(i32* %18, i32* %21, i32 4)
  %23 = load %struct.kvm*, %struct.kvm** %3, align 8
  %24 = call %struct.TYPE_5__* @pic_irqchip(%struct.kvm* %23)
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  br label %54

27:                                               ; preds = %2
  %28 = load %struct.kvm*, %struct.kvm** %3, align 8
  %29 = call %struct.TYPE_5__* @pic_irqchip(%struct.kvm* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.kvm*, %struct.kvm** %3, align 8
  %33 = call %struct.TYPE_5__* @pic_irqchip(%struct.kvm* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @memcpy(i32* %36, i32* %39, i32 4)
  %41 = load %struct.kvm*, %struct.kvm** %3, align 8
  %42 = call %struct.TYPE_5__* @pic_irqchip(%struct.kvm* %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock(i32* %43)
  br label %54

45:                                               ; preds = %2
  %46 = load %struct.kvm*, %struct.kvm** %3, align 8
  %47 = load %struct.kvm_irqchip*, %struct.kvm_irqchip** %4, align 8
  %48 = getelementptr inbounds %struct.kvm_irqchip, %struct.kvm_irqchip* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @kvm_set_ioapic(%struct.kvm* %46, i32* %49)
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %45, %27, %9
  %55 = load %struct.kvm*, %struct.kvm** %3, align 8
  %56 = call %struct.TYPE_5__* @pic_irqchip(%struct.kvm* %55)
  %57 = call i32 @kvm_pic_update_irq(%struct.TYPE_5__* %56)
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_5__* @pic_irqchip(%struct.kvm*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_set_ioapic(%struct.kvm*, i32*) #1

declare dso_local i32 @kvm_pic_update_irq(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
