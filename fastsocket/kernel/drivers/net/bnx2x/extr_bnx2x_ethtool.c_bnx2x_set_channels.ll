; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_channels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64, i64, i64 }
%struct.bnx2x = type { i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"set-channels command parameters: rx = %d, tx = %d, other = %d, combined = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"command parameters not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"No change in active parameters\0A\00", align 1
@UNLOAD_NORMAL = common dso_local global i32 0, align 4
@LOAD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @bnx2x_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2x* %8, %struct.bnx2x** %6, align 8
  %9 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, ...) @DP(i32 %9, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15, i64 %18, i64 %21)
  %23 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %2
  %28 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %27
  %33 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %32
  %38 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %47 = call i64 @BNX2X_MAX_RSS_COUNT(%struct.bnx2x* %46)
  %48 = icmp sgt i64 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %42, %37, %32, %27, %2
  %50 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %51 = call i32 (i32, i8*, ...) @DP(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %90

54:                                               ; preds = %42
  %55 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %59 = call i64 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x* %58)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %63 = call i32 (i32, i8*, ...) @DP(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %90

64:                                               ; preds = %54
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @netif_running(%struct.net_device* %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %74 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @bnx2x_change_num_queues(%struct.bnx2x* %73, i64 %76)
  store i32 0, i32* %3, align 4
  br label %90

78:                                               ; preds = %64
  %79 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %80 = load i32, i32* @UNLOAD_NORMAL, align 4
  %81 = call i32 @bnx2x_nic_unload(%struct.bnx2x* %79, i32 %80, i32 1)
  %82 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %83 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @bnx2x_change_num_queues(%struct.bnx2x* %82, i64 %85)
  %87 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %88 = load i32, i32* @LOAD_NORMAL, align 4
  %89 = call i32 @bnx2x_nic_load(%struct.bnx2x* %87, i32 %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %78, %72, %61, %49
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @BNX2X_MAX_RSS_COUNT(%struct.bnx2x*) #1

declare dso_local i64 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_change_num_queues(%struct.bnx2x*, i64) #1

declare dso_local i32 @bnx2x_nic_unload(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_nic_load(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
