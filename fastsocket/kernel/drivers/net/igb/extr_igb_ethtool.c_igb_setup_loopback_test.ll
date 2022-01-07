; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_setup_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_setup_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@E1000_DEV_ID_DH89XXCC_SGMII = common dso_local global i64 0, align 8
@E1000_DEV_ID_DH89XXCC_SERDES = common dso_local global i64 0, align 8
@E1000_DEV_ID_DH89XXCC_BACKPLANE = common dso_local global i64 0, align 8
@E1000_DEV_ID_DH89XXCC_SFP = common dso_local global i64 0, align 8
@E1000_MPHY_ADDR_CTL = common dso_local global i32 0, align 4
@E1000_MPHY_ADDR_CTL_OFFSET_MASK = common dso_local global i32 0, align 4
@E1000_MPHY_PCS_CLK_REG_OFFSET = common dso_local global i32 0, align 4
@E1000_MPHY_DATA = common dso_local global i32 0, align 4
@E1000_MPHY_PCS_CLK_REG_DIGINELBEN = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_LBM_TCVR = common dso_local global i32 0, align 4
@E1000_SCTL = common dso_local global i32 0, align 4
@E1000_ENABLE_SERDES_LOOPBACK = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_RFCE = common dso_local global i32 0, align 4
@E1000_CTRL_TFCE = common dso_local global i32 0, align 4
@E1000_CTRL_LRST = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@E1000_CONNSW = common dso_local global i32 0, align 4
@E1000_CONNSW_ENRGSRC = common dso_local global i32 0, align 4
@e1000_82580 = common dso_local global i64 0, align 8
@E1000_PCS_CFG0 = common dso_local global i32 0, align 4
@E1000_PCS_CFG_IGN_SD = common dso_local global i32 0, align 4
@E1000_PCS_LCTL = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_AN_ENABLE = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FLV_LINK_UP = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FSV_1000 = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FDV_FULL = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FSD = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FORCE_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_setup_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_setup_loopback_test(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 0
  store %struct.e1000_hw* %7, %struct.e1000_hw** %4, align 8
  %8 = load i32, i32* @E1000_CTRL_EXT, align 4
  %9 = call i32 @rd32(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %132

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @E1000_DEV_ID_DH89XXCC_SGMII, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %14
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @E1000_DEV_ID_DH89XXCC_SERDES, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @E1000_DEV_ID_DH89XXCC_BACKPLANE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %34 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @E1000_DEV_ID_DH89XXCC_SFP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32, %26, %20, %14
  %39 = load i32, i32* @E1000_MPHY_ADDR_CTL, align 4
  %40 = call i32 @rd32(i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @E1000_MPHY_ADDR_CTL_OFFSET_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @E1000_MPHY_PCS_CLK_REG_OFFSET, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @E1000_MPHY_ADDR_CTL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @wr32(i32 %46, i32 %47)
  %49 = load i32, i32* @E1000_MPHY_DATA, align 4
  %50 = call i32 @rd32(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @E1000_MPHY_PCS_CLK_REG_DIGINELBEN, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @E1000_MPHY_DATA, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @wr32(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %38, %32
  %58 = load i32, i32* @E1000_RCTL, align 4
  %59 = call i32 @rd32(i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* @E1000_RCTL_LBM_TCVR, align 4
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @E1000_RCTL, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @wr32(i32 %63, i32 %64)
  %66 = load i32, i32* @E1000_SCTL, align 4
  %67 = load i32, i32* @E1000_ENABLE_SERDES_LOOPBACK, align 4
  %68 = call i32 @wr32(i32 %66, i32 %67)
  %69 = load i32, i32* @E1000_CTRL, align 4
  %70 = call i32 @rd32(i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* @E1000_CTRL_RFCE, align 4
  %72 = load i32, i32* @E1000_CTRL_TFCE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @E1000_CTRL_LRST, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* @E1000_CTRL_SLU, align 4
  %80 = load i32, i32* @E1000_CTRL_FD, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @E1000_CTRL, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @wr32(i32 %84, i32 %85)
  %87 = load i32, i32* @E1000_CONNSW, align 4
  %88 = call i32 @rd32(i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* @E1000_CONNSW_ENRGSRC, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %5, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* @E1000_CONNSW, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @wr32(i32 %93, i32 %94)
  %96 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @e1000_82580, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %57
  %103 = load i32, i32* @E1000_PCS_CFG0, align 4
  %104 = call i32 @rd32(i32 %103)
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @E1000_PCS_CFG_IGN_SD, align 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @E1000_PCS_CFG0, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @wr32(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %102, %57
  %112 = load i32, i32* @E1000_PCS_LCTL, align 4
  %113 = call i32 @rd32(i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* @E1000_PCS_LCTL_AN_ENABLE, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* @E1000_PCS_LCTL_FLV_LINK_UP, align 4
  %119 = load i32, i32* @E1000_PCS_LCTL_FSV_1000, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @E1000_PCS_LCTL_FDV_FULL, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @E1000_PCS_LCTL_FSD, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @E1000_PCS_LCTL_FORCE_LINK, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* @E1000_PCS_LCTL, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @wr32(i32 %129, i32 %130)
  store i32 0, i32* %2, align 4
  br label %135

132:                                              ; preds = %1
  %133 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %134 = call i32 @igb_set_phy_loopback(%struct.igb_adapter* %133)
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %132, %111
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_set_phy_loopback(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
