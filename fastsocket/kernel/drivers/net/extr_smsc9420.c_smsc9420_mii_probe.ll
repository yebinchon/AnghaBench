; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_mii_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_mii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { i32, i32, %struct.phy_device*, %struct.TYPE_3__* }
%struct.phy_device = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.phy_device** }

@.str = private unnamed_addr constant [31 x i8] c"%s: no PHY found at address 1\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"PHY addr %d, phy_id 0x%08X\00", align 1
@smsc9420_phy_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: Could not attach to PHY\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"%s: attached PHY driver [%s] (mii_bus:phy_addr=%s, irq=%d)\0A\00", align 1
@PHY_BASIC_FEATURES = common dso_local global i32 0, align 4
@SUPPORTED_Pause = common dso_local global i32 0, align 4
@SUPPORTED_Asym_Pause = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc9420_mii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_mii_probe(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc9420_pdata*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %6)
  store %struct.smsc9420_pdata* %7, %struct.smsc9420_pdata** %4, align 8
  store %struct.phy_device* null, %struct.phy_device** %5, align 8
  %8 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %9 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %8, i32 0, i32 2
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %11 = call i32 @BUG_ON(%struct.phy_device* %10)
  %12 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %13 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.phy_device**, %struct.phy_device*** %15, align 8
  %17 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %16, i64 1
  %18 = load %struct.phy_device*, %struct.phy_device** %17, align 8
  %19 = icmp ne %struct.phy_device* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %96

27:                                               ; preds = %1
  %28 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %29 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.phy_device**, %struct.phy_device*** %31, align 8
  %33 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %32, i64 1
  %34 = load %struct.phy_device*, %struct.phy_device** %33, align 8
  store %struct.phy_device* %34, %struct.phy_device** %5, align 8
  %35 = load i32, i32* @PROBE, align 4
  %36 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @smsc_info(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 3
  %46 = call i32 @dev_name(i32* %45)
  %47 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %48 = call %struct.phy_device* @phy_connect(%struct.net_device* %43, i32 %46, i32* @smsc9420_phy_adjust_link, i32 0, i32 %47)
  store %struct.phy_device* %48, %struct.phy_device** %5, align 8
  %49 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %50 = call i64 @IS_ERR(%struct.phy_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %27
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %58 = call i32 @PTR_ERR(%struct.phy_device* %57)
  store i32 %58, i32* %2, align 4
  br label %96

59:                                               ; preds = %27
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %69 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %68, i32 0, i32 3
  %70 = call i32 @dev_name(i32* %69)
  %71 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %67, i32 %70, i32 %73)
  %75 = load i32, i32* @PHY_BASIC_FEATURES, align 4
  %76 = load i32, i32* @SUPPORTED_Pause, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SUPPORTED_Asym_Pause, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %81 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %85 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %88 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %90 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %91 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %90, i32 0, i32 2
  store %struct.phy_device* %89, %struct.phy_device** %91, align 8
  %92 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %93 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %92, i32 0, i32 0
  store i32 -1, i32* %93, align 8
  %94 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %95 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %94, i32 0, i32 1
  store i32 -1, i32* %95, align 4
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %59, %52, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(%struct.phy_device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @smsc_info(i32, i8*, i32, i32) #1

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
