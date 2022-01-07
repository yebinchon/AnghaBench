; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_init_eee.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy.c_phy_init_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.phy_device = type { i64, i64, i32, i32, i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@MDIO_PCS_EEE_ABLE = common dso_local global i32 0, align 4
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_AN_EEE_LPABLE = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_EEE_ADV = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_2__* null, align 8
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_PCS_CTRL1_CLKSTOP_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_init_eee(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @EPROTONOSUPPORT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DUPLEX_FULL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %152

23:                                               ; preds = %2
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PHY_INTERFACE_MODE_GMII, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %152

41:                                               ; preds = %35, %29, %23
  %42 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %43 = call i32 @phy_read_status(%struct.phy_device* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %3, align 4
  br label %155

48:                                               ; preds = %41
  %49 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MDIO_PCS_EEE_ABLE, align 4
  %53 = load i32, i32* @MDIO_MMD_PCS, align 4
  %54 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @phy_read_mmd_indirect(i32 %51, i32 %52, i32 %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %155

62:                                               ; preds = %48
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @mmd_eee_cap_to_ethtool_sup_t(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %153

68:                                               ; preds = %62
  %69 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %70 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MDIO_AN_EEE_LPABLE, align 4
  %73 = load i32, i32* @MDIO_MMD_AN, align 4
  %74 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %75 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @phy_read_mmd_indirect(i32 %71, i32 %72, i32 %73, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %155

82:                                               ; preds = %68
  %83 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %84 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MDIO_AN_EEE_ADV, align 4
  %87 = load i32, i32* @MDIO_MMD_AN, align 4
  %88 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %89 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @phy_read_mmd_indirect(i32 %85, i32 %86, i32 %87, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %155

96:                                               ; preds = %82
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @mmd_eee_adv_to_ethtool_adv_t(i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @mmd_eee_adv_to_ethtool_adv_t(i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %102 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %105 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @phy_find_setting(i32 %103, i64 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %108, %109
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @settings, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %110, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %96
  br label %153

120:                                              ; preds = %96
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %151

123:                                              ; preds = %120
  %124 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %125 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MDIO_CTRL1, align 4
  %128 = load i32, i32* @MDIO_MMD_PCS, align 4
  %129 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %130 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @phy_read_mmd_indirect(i32 %126, i32 %127, i32 %128, i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %123
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %3, align 4
  br label %155

137:                                              ; preds = %123
  %138 = load i32, i32* @MDIO_PCS_CTRL1_CLKSTOP_EN, align 4
  %139 = load i32, i32* %15, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %15, align 4
  %141 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %142 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MDIO_CTRL1, align 4
  %145 = load i32, i32* @MDIO_MMD_PCS, align 4
  %146 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %147 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @phy_write_mmd_indirect(i32 %143, i32 %144, i32 %145, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %137, %120
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %151, %35, %2
  br label %153

153:                                              ; preds = %152, %119, %67
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %135, %94, %80, %60, %46
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local i32 @phy_read_status(%struct.phy_device*) #1

declare dso_local i32 @phy_read_mmd_indirect(i32, i32, i32, i32) #1

declare dso_local i32 @mmd_eee_cap_to_ethtool_sup_t(i32) #1

declare dso_local i32 @mmd_eee_adv_to_ethtool_adv_t(i32) #1

declare dso_local i32 @phy_find_setting(i32, i64) #1

declare dso_local i32 @phy_write_mmd_indirect(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
