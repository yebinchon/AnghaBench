; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_marvell.c_m88e1145_config_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_marvell.c_m88e1145_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32 }

@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@MII_M1145_PHY_EXT_CR = common dso_local global i32 0, align 4
@MII_M1145_RGMII_RX_DELAY = common dso_local global i32 0, align 4
@MII_M1145_RGMII_TX_DELAY = common dso_local global i32 0, align 4
@M1145_DEV_FLAGS_RESISTANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @m88e1145_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1145_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = call i32 @phy_write(%struct.phy_device* %6, i32 29, i32 27)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %113

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = call i32 @phy_write(%struct.phy_device* %13, i32 30, i32 16783)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %113

19:                                               ; preds = %12
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = call i32 @phy_write(%struct.phy_device* %20, i32 29, i32 22)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %113

26:                                               ; preds = %19
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = call i32 @phy_write(%struct.phy_device* %27, i32 30, i32 41690)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %113

33:                                               ; preds = %26
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %112

39:                                               ; preds = %33
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = load i32, i32* @MII_M1145_PHY_EXT_CR, align 4
  %42 = call i32 @phy_read(%struct.phy_device* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %113

47:                                               ; preds = %39
  %48 = load i32, i32* @MII_M1145_RGMII_RX_DELAY, align 4
  %49 = load i32, i32* @MII_M1145_RGMII_TX_DELAY, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = load i32, i32* @MII_M1145_PHY_EXT_CR, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @phy_write(%struct.phy_device* %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %113

61:                                               ; preds = %47
  %62 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %63 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @M1145_DEV_FLAGS_RESISTANCE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %111

68:                                               ; preds = %61
  %69 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %70 = call i32 @phy_write(%struct.phy_device* %69, i32 29, i32 18)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %113

75:                                               ; preds = %68
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = call i32 @phy_read(%struct.phy_device* %76, i32 30)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %113

82:                                               ; preds = %75
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 61503
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, 1024
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, 128
  store i32 %88, i32* %5, align 4
  %89 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @phy_write(%struct.phy_device* %89, i32 30, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %113

96:                                               ; preds = %82
  %97 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %98 = call i32 @phy_write(%struct.phy_device* %97, i32 29, i32 3)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %113

103:                                              ; preds = %96
  %104 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %105 = call i32 @phy_write(%struct.phy_device* %104, i32 30, i32 32768)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %113

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %61
  br label %112

112:                                              ; preds = %111, %33
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %108, %101, %94, %80, %73, %59, %45, %31, %24, %17, %10
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
