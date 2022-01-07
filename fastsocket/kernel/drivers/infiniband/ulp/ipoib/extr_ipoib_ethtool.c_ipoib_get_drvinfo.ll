; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ethtool.c_ipoib_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ethtool.c_ipoib_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_device_attr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@ipoib_driver_version = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"ib_ipoib\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @ipoib_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoib_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ib_device_attr*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ib_device_attr* @kmalloc(i32 4, i32 %9)
  store %struct.ib_device_attr* %10, %struct.ib_device_attr** %6, align 8
  %11 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %12 = icmp ne %struct.ib_device_attr* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %18 = call i32 @ib_query_device(%struct.TYPE_2__* %16, %struct.ib_device_attr* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %13
  %21 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %25 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 32
  %28 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %29 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 65535
  %33 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %34 = getelementptr inbounds %struct.ib_device_attr, %struct.ib_device_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 65535
  %37 = call i32 @snprintf(i32 %23, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %20, %13, %2
  %39 = load %struct.ib_device_attr*, %struct.ib_device_attr** %6, align 8
  %40 = call i32 @kfree(%struct.ib_device_attr* %39)
  %41 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @dev_name(i32 %48)
  %50 = call i32 @strlcpy(i32 %43, i8* %49, i32 4)
  %51 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** @ipoib_driver_version, align 8
  %55 = call i32 @strlcpy(i32 %53, i8* %54, i32 4)
  %56 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @strlcpy(i32 %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 4)
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ib_device_attr* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_query_device(%struct.TYPE_2__*, %struct.ib_device_attr*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_device_attr*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
