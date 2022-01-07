; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_genphy_config_advert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_phy_device.c_genphy_config_advert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32 }

@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_config_advert(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = load i32, i32* @MII_ADVERTISE, align 4
  %21 = call i32 @phy_read(%struct.phy_device* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %98

26:                                               ; preds = %1
  %27 = load i32, i32* @ADVERTISE_ALL, align 4
  %28 = load i32, i32* @ADVERTISE_100BASE4, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ethtool_adv_to_mii_adv_t(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %26
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = load i32, i32* @MII_ADVERTISE, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @phy_write(%struct.phy_device* %45, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %98

53:                                               ; preds = %44
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SUPPORTED_1000baseT_Half, align 4
  %59 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %54
  %64 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %65 = load i32, i32* @MII_CTRL1000, align 4
  %66 = call i32 @phy_read(%struct.phy_device* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %98

71:                                               ; preds = %63
  %72 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %73 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %6, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @ethtool_adv_to_mii_ctrl1000_t(i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %71
  %86 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %87 = load i32, i32* @MII_CTRL1000, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @phy_write(%struct.phy_device* %86, i32 %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %98

94:                                               ; preds = %85
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %94, %71
  br label %96

96:                                               ; preds = %95, %54
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %92, %69, %51, %24
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @ethtool_adv_to_mii_adv_t(i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @ethtool_adv_to_mii_ctrl1000_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
