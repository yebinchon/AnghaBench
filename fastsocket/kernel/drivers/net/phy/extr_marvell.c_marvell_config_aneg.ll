; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_marvell.c_marvell_config_aneg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_marvell.c_marvell_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@MII_M1011_PHY_SCR = common dso_local global i32 0, align 4
@MII_M1011_PHY_SCR_AUTO_CROSS = common dso_local global i32 0, align 4
@MII_M1111_PHY_LED_CONTROL = common dso_local global i32 0, align 4
@MII_M1111_PHY_LED_DIRECT = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @marvell_config_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_config_aneg(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_BMCR, align 4
  %8 = load i32, i32* @BMCR_RESET, align 4
  %9 = call i32 @phy_write(%struct.phy_device* %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %101

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = call i32 @phy_write(%struct.phy_device* %15, i32 29, i32 31)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %101

21:                                               ; preds = %14
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = call i32 @phy_write(%struct.phy_device* %22, i32 30, i32 8204)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %101

28:                                               ; preds = %21
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = call i32 @phy_write(%struct.phy_device* %29, i32 29, i32 5)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %101

35:                                               ; preds = %28
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = call i32 @phy_write(%struct.phy_device* %36, i32 30, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %101

42:                                               ; preds = %35
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = call i32 @phy_write(%struct.phy_device* %43, i32 30, i32 256)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %101

49:                                               ; preds = %42
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = load i32, i32* @MII_M1011_PHY_SCR, align 4
  %52 = load i32, i32* @MII_M1011_PHY_SCR_AUTO_CROSS, align 4
  %53 = call i32 @phy_write(%struct.phy_device* %50, i32 %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %101

58:                                               ; preds = %49
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = load i32, i32* @MII_M1111_PHY_LED_CONTROL, align 4
  %61 = load i32, i32* @MII_M1111_PHY_LED_DIRECT, align 4
  %62 = call i32 @phy_write(%struct.phy_device* %59, i32 %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %101

67:                                               ; preds = %58
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = call i32 @genphy_config_aneg(%struct.phy_device* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %101

74:                                               ; preds = %67
  %75 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %76 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AUTONEG_ENABLE, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %74
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = load i32, i32* @MII_BMCR, align 4
  %83 = call i32 @phy_read(%struct.phy_device* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %101

88:                                               ; preds = %80
  %89 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %90 = load i32, i32* @MII_BMCR, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @BMCR_RESET, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @phy_write(%struct.phy_device* %89, i32 %90, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %101

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %74
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %97, %86, %72, %65, %56, %47, %40, %33, %26, %19, %12
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @genphy_config_aneg(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
