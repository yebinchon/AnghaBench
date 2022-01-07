; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_poll_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_pciehp_hpc.c_pcie_poll_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32 }

@PCI_EXP_SLTSTA = common dso_local global i32 0, align 4
@PCI_EXP_SLTSTA_CC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @pcie_poll_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_poll_cmd(%struct.controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  store i32 1000, i32* %6, align 4
  %7 = load %struct.controller*, %struct.controller** %3, align 8
  %8 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %9 = call i32 @pciehp_readw(%struct.controller* %7, i32 %8, i32* %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PCI_EXP_SLTSTA_CC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.controller*, %struct.controller** %3, align 8
  %19 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %20 = load i32, i32* @PCI_EXP_SLTSTA_CC, align 4
  %21 = call i32 @pciehp_writew(%struct.controller* %18, i32 %19, i32 %20)
  store i32 1, i32* %2, align 4
  br label %47

22:                                               ; preds = %12, %1
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = call i32 @msleep(i32 10)
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 10
  store i32 %29, i32* %6, align 4
  %30 = load %struct.controller*, %struct.controller** %3, align 8
  %31 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %32 = call i32 @pciehp_readw(%struct.controller* %30, i32 %31, i32* %4)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PCI_EXP_SLTSTA_CC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.controller*, %struct.controller** %3, align 8
  %42 = load i32, i32* @PCI_EXP_SLTSTA, align 4
  %43 = load i32, i32* @PCI_EXP_SLTSTA_CC, align 4
  %44 = call i32 @pciehp_writew(%struct.controller* %41, i32 %42, i32 %43)
  store i32 1, i32* %2, align 4
  br label %47

45:                                               ; preds = %35, %26
  br label %23

46:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %40, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @pciehp_readw(%struct.controller*, i32, i32*) #1

declare dso_local i32 @pciehp_writew(%struct.controller*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
