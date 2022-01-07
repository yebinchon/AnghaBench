; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_mii_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc911x_data = type { i32, i32, %struct.phy_device*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.phy_device = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.phy_device** }

@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PHY %d: addr %d, phy_id 0x%08X\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: no PHY found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@smsc911x_phy_adjust_link = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: Could not attach to PHY\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"%s: attached PHY driver [%s] (mii_bus:phy_addr=%s, irq=%d)\0A\00", align 1
@PHY_BASIC_FEATURES = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@HW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"phy initialised succesfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc911x_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %7)
  store %struct.smsc911x_data* %8, %struct.smsc911x_data** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %44, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PHY_MAX_ADDR, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %15 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.phy_device**, %struct.phy_device*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %18, i64 %20
  %22 = load %struct.phy_device*, %struct.phy_device** %21, align 8
  %23 = icmp ne %struct.phy_device* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %13
  %25 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %26 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.phy_device**, %struct.phy_device*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %29, i64 %31
  %33 = load %struct.phy_device*, %struct.phy_device** %32, align 8
  store %struct.phy_device* %33, %struct.phy_device** %5, align 8
  %34 = load i32, i32* @PROBE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @SMSC_TRACE(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %41)
  br label %47

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %9

47:                                               ; preds = %24, %9
  %48 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %49 = icmp ne %struct.phy_device* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %116

57:                                               ; preds = %47
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 3
  %61 = call i32 @dev_name(i32* %60)
  %62 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %63 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.phy_device* @phy_connect(%struct.net_device* %58, i32 %61, i32* @smsc911x_phy_adjust_link, i32 0, i32 %65)
  store %struct.phy_device* %66, %struct.phy_device** %5, align 8
  %67 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %68 = call i64 @IS_ERR(%struct.phy_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %57
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %76 = call i32 @PTR_ERR(%struct.phy_device* %75)
  store i32 %76, i32* %2, align 4
  br label %116

77:                                               ; preds = %57
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %82 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %87 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %86, i32 0, i32 3
  %88 = call i32 @dev_name(i32* %87)
  %89 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %90 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %85, i32 %88, i32 %91)
  %93 = load i32, i32* @PHY_BASIC_FEATURES, align 4
  %94 = load i32, i32* @SUPPORTED_Pause, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %103 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %106 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %108 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %109 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %108, i32 0, i32 2
  store %struct.phy_device* %107, %struct.phy_device** %109, align 8
  %110 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %111 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %110, i32 0, i32 0
  store i32 -1, i32* %111, align 8
  %112 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %113 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %112, i32 0, i32 1
  store i32 -1, i32* %113, align 4
  %114 = load i32, i32* @HW, align 4
  %115 = call i32 (i32, i8*, ...) @SMSC_TRACE(i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %77, %70, %50
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SMSC_TRACE(i32, i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.net_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
