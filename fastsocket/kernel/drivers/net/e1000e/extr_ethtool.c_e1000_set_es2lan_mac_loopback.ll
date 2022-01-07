; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_es2lan_mac_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_set_es2lan_mac_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@CTRL_EXT = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_100 = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_MAC = common dso_local global i32 0, align 4
@KMRNCTRLSTA = common dso_local global i32 0, align 4
@KMRNCTRLSTA_OPMODE = common dso_local global i32 0, align 4
@KMRNCTRLSTA_OPMODE_1GB_FD_GMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*)* @e1000_set_es2lan_mac_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_es2lan_mac_loopback(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 1
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load i32, i32* @CTRL_EXT, align 4
  %9 = call i32 @er32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @CTRL, align 4
  %11 = call i32 @er32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_PCIE_SERDES, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @CTRL_EXT, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ew32(i32 %19, i32 %20)
  %22 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %23 = load i32, i32* @E1000_CTRL_SPD_100, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @E1000_CTRL_SLU, align 4
  %29 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @E1000_CTRL_FD, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @CTRL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ew32(i32 %39, i32 %40)
  %42 = load i32, i32* @RCTL, align 4
  %43 = call i32 @er32(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @E1000_RCTL_LBM_MAC, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @RCTL, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @ew32(i32 %47, i32 %48)
  %50 = load i32, i32* @KMRNCTRLSTA, align 4
  %51 = call i32 @ew32(i32 %50, i32 2033026)
  ret i32 0
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
