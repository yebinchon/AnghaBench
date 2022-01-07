; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@BNX2X_PHY_LOOPBACK = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"  PHY loopback failed  (res %d)\0A\00", align 1
@BNX2X_PHY_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@BNX2X_MAC_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"  MAC loopback failed  (res %d)\0A\00", align 1
@BNX2X_MAC_LOOPBACK_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_test_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_test_loopback(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = call i64 @BP_NOMCP(%struct.bnx2x* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %55

11:                                               ; preds = %1
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @netif_running(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @BNX2X_LOOPBACK_FAILED, align 4
  store i32 %18, i32* %2, align 4
  br label %55

19:                                               ; preds = %11
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = call i32 @bnx2x_netif_stop(%struct.bnx2x* %20, i32 1)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = load i32, i32* @BNX2X_PHY_LOOPBACK, align 4
  %26 = call i32 @bnx2x_run_loopback(%struct.bnx2x* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DP(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @BNX2X_PHY_LOOPBACK_FAILED, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %29, %19
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = load i32, i32* @BNX2X_MAC_LOOPBACK, align 4
  %39 = call i32 @bnx2x_run_loopback(%struct.bnx2x* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @DP(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @BNX2X_MAC_LOOPBACK_FAILED, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %51 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %50)
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = call i32 @bnx2x_netif_start(%struct.bnx2x* %52)
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %17, %9
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @bnx2x_netif_stop(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_run_loopback(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_netif_start(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
