; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_assign_alt_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_ibmphp_pci.c_assign_alt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_func = type { i32* }

@SCSI_IRQ = common dso_local global i32 0, align 4
@LAN_IRQ = common dso_local global i32 0, align 4
@OTHER_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_func*, i32)* @assign_alt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_alt_irq(%struct.pci_func* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_func*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_func* %0, %struct.pci_func** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %46, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %49

9:                                                ; preds = %6
  %10 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %11 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 255
  br i1 %17, label %18, label %45

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %36 [
    i32 128, label %20
    i32 129, label %28
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @SCSI_IRQ, align 4
  %22 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %23 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %21, i32* %27, align 4
  br label %44

28:                                               ; preds = %18
  %29 = load i32, i32* @LAN_IRQ, align 4
  %30 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %31 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  br label %44

36:                                               ; preds = %18
  %37 = load i32, i32* @OTHER_IRQ, align 4
  %38 = load %struct.pci_func*, %struct.pci_func** %3, align 8
  %39 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %36, %28, %20
  br label %45

45:                                               ; preds = %44, %9
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %6

49:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
