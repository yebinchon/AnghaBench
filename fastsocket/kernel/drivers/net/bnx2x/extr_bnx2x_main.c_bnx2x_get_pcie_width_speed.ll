; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_pcie_width_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_pcie_width_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@PCICFG_LINK_CONTROL = common dso_local global i32 0, align 4
@PCICFG_LINK_WIDTH = common dso_local global i32 0, align 4
@PCICFG_LINK_WIDTH_SHIFT = common dso_local global i32 0, align 4
@PCICFG_LINK_SPEED = common dso_local global i32 0, align 4
@PCICFG_LINK_SPEED_SHIFT = common dso_local global i32 0, align 4
@BNX2X_PCI_LINK_SPEED_8000 = common dso_local global i32 0, align 4
@BNX2X_PCI_LINK_SPEED_5000 = common dso_local global i32 0, align 4
@BNX2X_PCI_LINK_SPEED_2500 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32*, i32*)* @bnx2x_get_pcie_width_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_pcie_width_speed(%struct.bnx2x* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCICFG_LINK_CONTROL, align 4
  %13 = call i32 @pci_read_config_dword(i32 %11, i32 %12, i32* %8)
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PCICFG_LINK_WIDTH, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @PCICFG_LINK_WIDTH_SHIFT, align 4
  %18 = ashr i32 %16, %17
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PCICFG_LINK_SPEED, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @PCICFG_LINK_SPEED_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %32 [
    i32 3, label %26
    i32 2, label %29
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* @BNX2X_PCI_LINK_SPEED_8000, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %35

29:                                               ; preds = %3
  %30 = load i32, i32* @BNX2X_PCI_LINK_SPEED_5000, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @BNX2X_PCI_LINK_SPEED_2500, align 4
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29, %26
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
