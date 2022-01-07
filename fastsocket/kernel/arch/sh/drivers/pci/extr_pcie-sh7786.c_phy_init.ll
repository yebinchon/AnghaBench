; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_pcie-sh7786.c_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_pcie-sh7786.c_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_channel = type { i32 }

@SH4A_PCIEPHYSR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_channel*)* @phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_init(%struct.pci_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_channel* %0, %struct.pci_channel** %3, align 8
  store i32 100, i32* %4, align 4
  %5 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %6 = call i32 @phy_write_reg(%struct.pci_channel* %5, i32 96, i32 15, i32 4915339)
  %7 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %8 = call i32 @phy_write_reg(%struct.pci_channel* %7, i32 97, i32 15, i32 31553)
  %9 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %10 = call i32 @phy_write_reg(%struct.pci_channel* %9, i32 100, i32 15, i32 16731904)
  %11 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %12 = call i32 @phy_write_reg(%struct.pci_channel* %11, i32 101, i32 15, i32 151456007)
  %13 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %14 = call i32 @phy_write_reg(%struct.pci_channel* %13, i32 102, i32 15, i32 16)
  %15 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %16 = call i32 @phy_write_reg(%struct.pci_channel* %15, i32 116, i32 15, i32 458780)
  %17 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %18 = call i32 @phy_write_reg(%struct.pci_channel* %17, i32 121, i32 15, i32 33292301)
  %19 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %20 = call i32 @phy_write_reg(%struct.pci_channel* %19, i32 103, i32 15, i32 1024)
  br label %21

21:                                               ; preds = %31, %1
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %27 = load i32, i32* @SH4A_PCIEPHYSR, align 4
  %28 = call i64 @pci_read_reg(%struct.pci_channel* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %36

31:                                               ; preds = %25
  %32 = call i32 @udelay(i32 100)
  br label %21

33:                                               ; preds = %21
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @phy_write_reg(%struct.pci_channel*, i32, i32, i32) #1

declare dso_local i64 @pci_read_reg(%struct.pci_channel*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
