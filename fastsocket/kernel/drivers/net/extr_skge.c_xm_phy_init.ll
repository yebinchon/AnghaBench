; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_xm_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_xm_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i64, i32, i64, i64, i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@PHY_X_AN_HD = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@PHY_X_AN_FD = common dso_local global i32 0, align 4
@fiber_pause_map = common dso_local global i32* null, align 8
@PHY_XMAC_AUNE_ADV = common dso_local global i32 0, align 4
@PHY_CT_ANE = common dso_local global i32 0, align 4
@PHY_CT_RE_CFG = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PHY_CT_DUP_MD = common dso_local global i32 0, align 4
@PHY_XMAC_CTRL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LINK_HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @xm_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xm_phy_init(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %6 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %7 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %6, i32 0, i32 6
  %8 = load %struct.skge_hw*, %struct.skge_hw** %7, align 8
  store %struct.skge_hw* %8, %struct.skge_hw** %3, align 8
  %9 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %10 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %13 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AUTONEG_ENABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %1
  %18 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %19 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @PHY_X_AN_HD, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %30 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @PHY_X_AN_FD, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32*, i32** @fiber_pause_map, align 8
  %41 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %42 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PHY_XMAC_AUNE_ADV, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @xm_phy_write(%struct.skge_hw* %48, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @PHY_CT_ANE, align 4
  %54 = load i32, i32* @PHY_CT_RE_CFG, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %5, align 4
  br label %67

56:                                               ; preds = %1
  %57 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %58 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DUPLEX_FULL, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @PHY_CT_DUP_MD, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %56
  br label %67

67:                                               ; preds = %66, %39
  %68 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @PHY_XMAC_CTRL, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @xm_phy_write(%struct.skge_hw* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %74 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %73, i32 0, i32 5
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i64, i64* @LINK_HZ, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @mod_timer(i32* %74, i64 %77)
  ret void
}

declare dso_local i32 @xm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
