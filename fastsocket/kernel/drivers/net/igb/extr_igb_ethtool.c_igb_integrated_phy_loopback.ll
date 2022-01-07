; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_integrated_phy_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_integrated_phy_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@e1000_phy_m88 = common dso_local global i64 0, align 8
@I210_I_PHY_ID = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@PHY_CONTROL = common dso_local global i32 0, align 4
@I347AT4_PAGE_SELECT = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_SEL = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_ILOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_integrated_phy_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_integrated_phy_loopback(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 0
  store %struct.e1000_hw* %6, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_phy_m88, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @I210_I_PHY_ID, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %26 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %24, i32 %25, i32 2056)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = load i32, i32* @PHY_CONTROL, align 4
  %29 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %27, i32 %28, i32 37184)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* @PHY_CONTROL, align 4
  %32 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %30, i32 %31, i32 33088)
  br label %40

33:                                               ; preds = %16
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = load i32, i32* @I347AT4_PAGE_SELECT, align 4
  %36 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %34, i32 %35, i32 0)
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = load i32, i32* @PHY_CONTROL, align 4
  %39 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %37, i32 %38, i32 16704)
  br label %40

40:                                               ; preds = %33, %23
  br label %41

41:                                               ; preds = %40, %1
  %42 = call i32 @msleep(i32 50)
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = load i32, i32* @PHY_CONTROL, align 4
  %45 = call i32 @igb_write_phy_reg(%struct.e1000_hw* %43, i32 %44, i32 16704)
  %46 = load i32, i32* @E1000_CTRL, align 4
  %47 = call i32 @rd32(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* @E1000_CTRL_SPD_SEL, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %53 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @E1000_CTRL_FD, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @E1000_CTRL_SLU, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @e1000_phy_m88, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %41
  %70 = load i32, i32* @E1000_CTRL_ILOS, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %41
  %74 = load i32, i32* @E1000_CTRL, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @wr32(i32 %74, i32 %75)
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @e1000_phy_m88, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %85 = call i32 @igb_phy_disable_receiver(%struct.igb_adapter* %84)
  br label %86

86:                                               ; preds = %83, %73
  %87 = call i32 @mdelay(i32 500)
  ret i32 0
}

declare dso_local i32 @igb_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_phy_disable_receiver(%struct.igb_adapter*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
