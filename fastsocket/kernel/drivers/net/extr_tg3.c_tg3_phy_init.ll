; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { %struct.phy_device** }
%struct.phy_device = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@TG3_PHYFLG_IS_CONNECTED = common dso_local global i32 0, align 4
@TG3_PHY_MII_ADDR = common dso_local global i64 0, align 8
@tg3_adjust_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@TG3_PHYFLG_10_100_ONLY = common dso_local global i32 0, align 4
@PHY_GBIT_FEATURES = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@PHY_BASIC_FEATURES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_init(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %5 = load %struct.tg3*, %struct.tg3** %3, align 8
  %6 = getelementptr inbounds %struct.tg3, %struct.tg3* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TG3_PHYFLG_IS_CONNECTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %103

12:                                               ; preds = %1
  %13 = load %struct.tg3*, %struct.tg3** %3, align 8
  %14 = call i32 @tg3_bmcr_reset(%struct.tg3* %13)
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.phy_device**, %struct.phy_device*** %18, align 8
  %20 = load i64, i64* @TG3_PHY_MII_ADDR, align 8
  %21 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %19, i64 %20
  %22 = load %struct.phy_device*, %struct.phy_device** %21, align 8
  store %struct.phy_device* %22, %struct.phy_device** %4, align 8
  %23 = load %struct.tg3*, %struct.tg3** %3, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 4
  %28 = call i32 @dev_name(i32* %27)
  %29 = load i32, i32* @tg3_adjust_link, align 4
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.phy_device* @phy_connect(i32 %25, i32 %28, i32 %29, i32 %32, i32 %35)
  store %struct.phy_device* %36, %struct.phy_device** %4, align 8
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = call i64 @IS_ERR(%struct.phy_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %12
  %41 = load %struct.tg3*, %struct.tg3** %3, align 8
  %42 = getelementptr inbounds %struct.tg3, %struct.tg3* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %47 = call i32 @PTR_ERR(%struct.phy_device* %46)
  store i32 %47, i32* %2, align 4
  br label %103

48:                                               ; preds = %12
  %49 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %80 [
    i32 130, label %52
    i32 128, label %52
    i32 129, label %70
  ]

52:                                               ; preds = %48, %48
  %53 = load %struct.tg3*, %struct.tg3** %3, align 8
  %54 = getelementptr inbounds %struct.tg3, %struct.tg3* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @PHY_GBIT_FEATURES, align 4
  %61 = load i32, i32* @SUPPORTED_Pause, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %92

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %48, %69
  %71 = load i32, i32* @PHY_BASIC_FEATURES, align 4
  %72 = load i32, i32* @SUPPORTED_Pause, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %92

80:                                               ; preds = %48
  %81 = load %struct.tg3*, %struct.tg3** %3, align 8
  %82 = getelementptr inbounds %struct.tg3, %struct.tg3* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.phy_device**, %struct.phy_device*** %84, align 8
  %86 = load i64, i64* @TG3_PHY_MII_ADDR, align 8
  %87 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %85, i64 %86
  %88 = load %struct.phy_device*, %struct.phy_device** %87, align 8
  %89 = call i32 @phy_disconnect(%struct.phy_device* %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %103

92:                                               ; preds = %70, %59
  %93 = load i32, i32* @TG3_PHYFLG_IS_CONNECTED, align 4
  %94 = load %struct.tg3*, %struct.tg3** %3, align 8
  %95 = getelementptr inbounds %struct.tg3, %struct.tg3* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %102 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %92, %80, %40, %11
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @tg3_bmcr_reset(%struct.tg3*) #1

declare dso_local %struct.phy_device* @phy_connect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
