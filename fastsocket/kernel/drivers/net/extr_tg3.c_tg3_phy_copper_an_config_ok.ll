; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_copper_an_config_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_copper_an_config_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@ADVERTISE_ALL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@TG3_PHYFLG_10_100_ONLY = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@CHIPREV_ID_5701_A0 = common dso_local global i64 0, align 8
@CHIPREV_ID_5701_B0 = common dso_local global i64 0, align 8
@CTL1000_AS_MASTER = common dso_local global i32 0, align 4
@CTL1000_ENABLE_MASTER = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32*)* @tg3_phy_copper_an_config_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_copper_an_config_ok(%struct.tg3* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.tg3*, %struct.tg3** %4, align 8
  %11 = getelementptr inbounds %struct.tg3, %struct.tg3* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @ethtool_adv_to_mii_adv_t(i32 %14)
  %16 = load i32, i32* @ADVERTISE_ALL, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @ADVERTISE_ALL, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.tg3*, %struct.tg3** %4, align 8
  %20 = getelementptr inbounds %struct.tg3, %struct.tg3* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DUPLEX_FULL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.tg3*, %struct.tg3** %4, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mii_advertise_flowctrl(i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %34 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %25, %2
  %39 = load %struct.tg3*, %struct.tg3** %4, align 8
  %40 = load i32, i32* @MII_ADVERTISE, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i64 @tg3_readphy(%struct.tg3* %39, i32 %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %109

45:                                               ; preds = %38
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %109

53:                                               ; preds = %45
  %54 = load %struct.tg3*, %struct.tg3** %4, align 8
  %55 = getelementptr inbounds %struct.tg3, %struct.tg3* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %108, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @ethtool_adv_to_mii_ctrl1000_t(i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.tg3*, %struct.tg3** %4, align 8
  %64 = load i32, i32* @MII_CTRL1000, align 4
  %65 = call i64 @tg3_readphy(%struct.tg3* %63, i32 %64, i32* %9)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %109

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %68
  %72 = load %struct.tg3*, %struct.tg3** %4, align 8
  %73 = call i64 @tg3_chip_rev_id(%struct.tg3* %72)
  %74 = load i64, i64* @CHIPREV_ID_5701_A0, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.tg3*, %struct.tg3** %4, align 8
  %78 = call i64 @tg3_chip_rev_id(%struct.tg3* %77)
  %79 = load i64, i64* @CHIPREV_ID_5701_B0, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %76, %71
  %82 = load i32, i32* @CTL1000_AS_MASTER, align 4
  %83 = load i32, i32* @CTL1000_ENABLE_MASTER, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %88 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @CTL1000_AS_MASTER, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @CTL1000_ENABLE_MASTER, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %102

96:                                               ; preds = %76, %68
  %97 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %98 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %96, %81
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %109

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %53
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %106, %67, %52, %44
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @ethtool_adv_to_mii_adv_t(i32) #1

declare dso_local i32 @mii_advertise_flowctrl(i32) #1

declare dso_local i64 @tg3_readphy(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @ethtool_adv_to_mii_ctrl1000_t(i32) #1

declare dso_local i64 @tg3_chip_rev_id(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
