; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_start_phy_polling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_start_phy_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i32 }

@ATL1C_FPGA_VERSION = common dso_local global i32 0, align 4
@MDIO_CTRL_SPRES_PRMBL = common dso_local global i32 0, align 4
@MDIO_CTRL_CLK_SEL = common dso_local global i32 0, align 4
@MDIO_CTRL_REG = common dso_local global i32 0, align 4
@MDIO_CTRL_START = common dso_local global i32 0, align 4
@MDIO_CTRL_OP_READ = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i32 0, align 4
@MDIO_CTRL_AP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atl1c_start_phy_polling(%struct.atl1c_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %7 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATL1C_FPGA_VERSION, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* @MDIO_CTRL_SPRES_PRMBL, align 4
  %15 = load i32, i32* @MDIO_CTRL_CLK_SEL, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @FIELDX(i32 %15, i32 %16)
  %18 = or i32 %14, %17
  %19 = load i32, i32* @MDIO_CTRL_REG, align 4
  %20 = call i32 @FIELDX(i32 %19, i32 1)
  %21 = or i32 %18, %20
  %22 = load i32, i32* @MDIO_CTRL_START, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MDIO_CTRL_OP_READ, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %27 = load i32, i32* @REG_MDIO_CTRL, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %31 = call i32 @atl1c_wait_mdio_idle(%struct.atl1c_hw* %30)
  %32 = load i32, i32* @MDIO_CTRL_AP_EN, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* @MDIO_CTRL_START, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %40 = load i32, i32* @REG_MDIO_CTRL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @AT_WRITE_REG(%struct.atl1c_hw* %39, i32 %40, i32 %41)
  %43 = call i32 @udelay(i32 30)
  br label %44

44:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @FIELDX(i32, i32) #1

declare dso_local i32 @AT_WRITE_REG(%struct.atl1c_hw*, i32, i32) #1

declare dso_local i32 @atl1c_wait_mdio_idle(%struct.atl1c_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
