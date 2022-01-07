; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.nic = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.param_range, %struct.param_range }
%struct.param_range = type { i8*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Ring Param settings: rx: %d, tx %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @e100_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.nic*, align 8
  %7 = alloca %struct.param_range*, align 8
  %8 = alloca %struct.param_range*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.nic* @netdev_priv(%struct.net_device* %9)
  store %struct.nic* %10, %struct.nic** %6, align 8
  %11 = load %struct.nic*, %struct.nic** %6, align 8
  %12 = getelementptr inbounds %struct.nic, %struct.nic* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.param_range* %13, %struct.param_range** %7, align 8
  %14 = load %struct.nic*, %struct.nic** %6, align 8
  %15 = getelementptr inbounds %struct.nic, %struct.nic* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.param_range* %16, %struct.param_range** %8, align 8
  %17 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %21
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = call i64 @netif_running(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.nic*, %struct.nic** %6, align 8
  %35 = call i32 @e100_down(%struct.nic* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.param_range*, %struct.param_range** %7, align 8
  %41 = getelementptr inbounds %struct.param_range, %struct.param_range* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @max(i32 %39, i32 %42)
  %44 = load %struct.param_range*, %struct.param_range** %7, align 8
  %45 = getelementptr inbounds %struct.param_range, %struct.param_range* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.param_range*, %struct.param_range** %7, align 8
  %47 = getelementptr inbounds %struct.param_range, %struct.param_range* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.param_range*, %struct.param_range** %7, align 8
  %50 = getelementptr inbounds %struct.param_range, %struct.param_range* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @min(i8* %48, i32 %51)
  %53 = load %struct.param_range*, %struct.param_range** %7, align 8
  %54 = getelementptr inbounds %struct.param_range, %struct.param_range* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.param_range*, %struct.param_range** %8, align 8
  %59 = getelementptr inbounds %struct.param_range, %struct.param_range* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @max(i32 %57, i32 %60)
  %62 = load %struct.param_range*, %struct.param_range** %8, align 8
  %63 = getelementptr inbounds %struct.param_range, %struct.param_range* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.param_range*, %struct.param_range** %8, align 8
  %65 = getelementptr inbounds %struct.param_range, %struct.param_range* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.param_range*, %struct.param_range** %8, align 8
  %68 = getelementptr inbounds %struct.param_range, %struct.param_range* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @min(i8* %66, i32 %69)
  %71 = load %struct.param_range*, %struct.param_range** %8, align 8
  %72 = getelementptr inbounds %struct.param_range, %struct.param_range* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.nic*, %struct.nic** %6, align 8
  %74 = load i32, i32* @drv, align 4
  %75 = load %struct.nic*, %struct.nic** %6, align 8
  %76 = getelementptr inbounds %struct.nic, %struct.nic* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.param_range*, %struct.param_range** %7, align 8
  %79 = getelementptr inbounds %struct.param_range, %struct.param_range* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.param_range*, %struct.param_range** %8, align 8
  %82 = getelementptr inbounds %struct.param_range, %struct.param_range* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @netif_info(%struct.nic* %73, i32 %74, i32 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %80, i8* %83)
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i64 @netif_running(%struct.net_device* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %36
  %89 = load %struct.nic*, %struct.nic** %6, align 8
  %90 = call i32 @e100_up(%struct.nic* %89)
  br label %91

91:                                               ; preds = %88, %36
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %26
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @e100_down(%struct.nic*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i32 @netif_info(%struct.nic*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @e100_up(%struct.nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
