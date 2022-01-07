; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_ext_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_ext_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BNX2X_EXT_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@UNLOAD_NORMAL = common dso_local global i32 0, align 4
@LOAD_LOOPBACK_EXT = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Can't perform self-test, nic_load (for external lb) failed\0A\00", align 1
@BNX2X_EXT_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"EXT loopback failed  (res %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_test_ext_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_test_ext_loopback(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %11 = and i32 %9, %10
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = call i64 @BP_NOMCP(%struct.bnx2x* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %61

20:                                               ; preds = %1
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netif_running(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @BNX2X_EXT_LOOPBACK_FAILED, align 4
  store i32 %27, i32* %2, align 4
  br label %61

28:                                               ; preds = %20
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = load i32, i32* @UNLOAD_NORMAL, align 4
  %31 = call i32 @bnx2x_nic_unload(%struct.bnx2x* %29, i32 %30, i32 0)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = load i32, i32* @LOAD_LOOPBACK_EXT, align 4
  %34 = call i32 @bnx2x_nic_load(%struct.bnx2x* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %39 = call i32 (i32, i8*, ...) @DP(i32 %38, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %61

42:                                               ; preds = %28
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @bnx2x_wait_for_link(%struct.bnx2x* %43, i32 1, i32 %44)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %47 = call i32 @bnx2x_netif_stop(%struct.bnx2x* %46, i32 1)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = load i32, i32* @BNX2X_EXT_LOOPBACK, align 4
  %50 = call i32 @bnx2x_run_loopback(%struct.bnx2x* %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32, i8*, ...) @DP(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %42
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = call i32 @bnx2x_netif_start(%struct.bnx2x* %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %37, %26, %17
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @bnx2x_nic_unload(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_nic_load(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_wait_for_link(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_netif_stop(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_run_loopback(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_netif_start(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
