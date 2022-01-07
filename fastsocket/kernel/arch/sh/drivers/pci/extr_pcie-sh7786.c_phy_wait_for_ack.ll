; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_pcie-sh7786.c_phy_wait_for_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/pci/extr_pcie-sh7786.c_phy_wait_for_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_channel = type { i32 }

@SH4A_PCIEPHYADRR = common dso_local global i32 0, align 4
@BITS_ACK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_channel*)* @phy_wait_for_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_wait_for_ack(%struct.pci_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_channel* %0, %struct.pci_channel** %3, align 8
  store i32 100, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %4, align 4
  %7 = add i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %6, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load %struct.pci_channel*, %struct.pci_channel** %3, align 8
  %11 = load i32, i32* @SH4A_PCIEPHYADRR, align 4
  %12 = call i32 @pci_read_reg(%struct.pci_channel* %10, i32 %11)
  %13 = load i32, i32* @BITS_ACK, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %23

18:                                               ; preds = %9
  %19 = call i32 @udelay(i32 100)
  br label %5

20:                                               ; preds = %5
  %21 = load i32, i32* @ETIMEDOUT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @pci_read_reg(%struct.pci_channel*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
