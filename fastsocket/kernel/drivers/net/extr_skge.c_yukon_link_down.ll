; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_yukon_link_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_yukon_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i64, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@GM_GP_CTRL = common dso_local global i32 0, align 4
@GM_GPCR_RX_ENA = common dso_local global i32 0, align 4
@GM_GPCR_TX_ENA = common dso_local global i32 0, align 4
@FLOW_STAT_REM_SEND = common dso_local global i64 0, align 8
@PHY_MARV_AUNE_ADV = common dso_local global i32 0, align 4
@PHY_M_AN_ASP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @yukon_link_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yukon_link_down(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %6 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %7 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %6, i32 0, i32 2
  %8 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  store %struct.skge_hw* %8, %struct.skge_hw** %3, align 8
  %9 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %10 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GM_GP_CTRL, align 4
  %15 = call i32 @gma_read16(%struct.skge_hw* %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @GM_GPCR_RX_ENA, align 4
  %17 = load i32, i32* @GM_GPCR_TX_ENA, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @GM_GP_CTRL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @gma_write16(%struct.skge_hw* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %28 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @FLOW_STAT_REM_SEND, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PHY_MARV_AUNE_ADV, align 4
  %36 = call i32 @gm_phy_read(%struct.skge_hw* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @PHY_M_AN_ASP, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @PHY_MARV_AUNE_ADV, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @gm_phy_write(%struct.skge_hw* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %32, %1
  %46 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %47 = call i32 @skge_link_down(%struct.skge_port* %46)
  %48 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @yukon_init(%struct.skge_hw* %48, i32 %49)
  ret void
}

declare dso_local i32 @gma_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @gma_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @gm_phy_read(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @skge_link_down(%struct.skge_port*) #1

declare dso_local i32 @yukon_init(%struct.skge_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
