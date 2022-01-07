; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@BNX2X_FLOW_CTRL_AUTO = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_RX = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_TX = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"ethtool_pauseparam: cmd %d\0A  autoneg %d  rx_pause %d  tx_pause %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @bnx2x_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %8)
  store %struct.bnx2x* %9, %struct.bnx2x** %5, align 8
  %10 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %11 = call i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BNX2X_FLOW_CTRL_AUTO, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %2
  %30 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  br label %43

38:                                               ; preds = %2
  %39 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %29
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @BNX2X_FLOW_CTRL_RX, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @BNX2X_FLOW_CTRL_TX, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %59 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %61 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %68 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %71 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DP(i32 %60, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66, i32 %69, i32 %72)
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2x_get_link_cfg_idx(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
