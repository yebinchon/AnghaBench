; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_access.c_pcie_capability_reg_implemented.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_access.c_pcie_capability_reg_implemented.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pcie_capability_reg_implemented to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcie_capability_reg_implemented(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %7 = call i32 @pci_is_pcie(%struct.pci_dev* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %30 [
    i32 140, label %12
    i32 145, label %13
    i32 143, label %13
    i32 141, label %13
    i32 139, label %16
    i32 137, label %16
    i32 135, label %16
    i32 130, label %19
    i32 129, label %19
    i32 128, label %19
    i32 132, label %22
    i32 133, label %22
    i32 131, label %22
    i32 144, label %25
    i32 142, label %25
    i32 138, label %25
    i32 136, label %25
    i32 134, label %25
  ]

12:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %31

13:                                               ; preds = %10, %10, %10
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @pcie_cap_has_devctl(%struct.pci_dev* %14)
  store i32 %15, i32* %3, align 4
  br label %31

16:                                               ; preds = %10, %10, %10
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pcie_cap_has_lnkctl(%struct.pci_dev* %17)
  store i32 %18, i32* %3, align 4
  br label %31

19:                                               ; preds = %10, %10, %10
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i32 @pcie_cap_has_sltctl(%struct.pci_dev* %20)
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %10, %10, %10
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pcie_cap_has_rtctl(%struct.pci_dev* %23)
  store i32 %24, i32* %3, align 4
  br label %31

25:                                               ; preds = %10, %10, %10, %10, %10
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = call i32 @pcie_cap_version(%struct.pci_dev* %26)
  %28 = icmp sgt i32 %27, 1
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %25, %22, %19, %16, %13, %12, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_cap_has_devctl(%struct.pci_dev*) #1

declare dso_local i32 @pcie_cap_has_lnkctl(%struct.pci_dev*) #1

declare dso_local i32 @pcie_cap_has_sltctl(%struct.pci_dev*) #1

declare dso_local i32 @pcie_cap_has_rtctl(%struct.pci_dev*) #1

declare dso_local i32 @pcie_cap_version(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
