; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BNX2X_RX_MODE_NORMAL = common dso_local global i32 0, align 4
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"state is %x, returning\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"dev->flags = %x\0A\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@BNX2X_RX_MODE_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BNX2X_MAX_MULTICAST = common dso_local global i64 0, align 8
@BNX2X_RX_MODE_ALLMULTI = common dso_local global i32 0, align 4
@BNX2X_SP_RTNL_VFPF_MCAST = common dso_local global i32 0, align 4
@BNX2X_RX_MODE_NONE = common dso_local global i32 0, align 4
@BNX2X_FILTER_RX_MODE_PENDING = common dso_local global i32 0, align 4
@BNX2X_FILTER_RX_MODE_SCHED = common dso_local global i32 0, align 4
@BNX2X_SP_RTNL_VFPF_STORM_RX_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %5)
  store %struct.bnx2x* %6, %struct.bnx2x** %3, align 8
  %7 = load i32, i32* @BNX2X_RX_MODE_NORMAL, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @DP(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %121

19:                                               ; preds = %1
  %20 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @DP(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_PROMISC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @BNX2X_RX_MODE_PROMISC, align 4
  store i32 %34, i32* %4, align 4
  br label %82

35:                                               ; preds = %19
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i64 @netdev_mc_count(%struct.net_device* %43)
  %45 = load i64, i64* @BNX2X_MAX_MULTICAST, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %49 = call i64 @CHIP_IS_E1(%struct.bnx2x* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %35
  %52 = load i32, i32* @BNX2X_RX_MODE_ALLMULTI, align 4
  store i32 %52, i32* %4, align 4
  br label %81

53:                                               ; preds = %47, %42
  %54 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %55 = call i64 @IS_PF(%struct.bnx2x* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %59 = call i64 @bnx2x_set_mc_list(%struct.bnx2x* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @BNX2X_RX_MODE_ALLMULTI, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %57
  %64 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %65 = call i64 @bnx2x_set_uc_list(%struct.bnx2x* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @BNX2X_RX_MODE_PROMISC, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %63
  br label %80

70:                                               ; preds = %53
  %71 = call i32 (...) @smp_mb__before_clear_bit()
  %72 = load i32, i32* @BNX2X_SP_RTNL_VFPF_MCAST, align 4
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %73, i32 0, i32 2
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = call i32 (...) @smp_mb__after_clear_bit()
  %77 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %78 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %77, i32 0, i32 1
  %79 = call i32 @schedule_delayed_work(i32* %78, i32 0)
  br label %80

80:                                               ; preds = %70, %69
  br label %81

81:                                               ; preds = %80, %51
  br label %82

82:                                               ; preds = %81, %33
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %85 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %87 = call i64 @IS_MF_ISCSI_SD(%struct.bnx2x* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @BNX2X_RX_MODE_NONE, align 4
  %91 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %92 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %95 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %96 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %95, i32 0, i32 3
  %97 = call i64 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i32, i32* @BNX2X_FILTER_RX_MODE_SCHED, align 4
  %101 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %102 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %101, i32 0, i32 3
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  br label %121

104:                                              ; preds = %93
  %105 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %106 = call i64 @IS_PF(%struct.bnx2x* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %110 = call i32 @bnx2x_set_storm_rx_mode(%struct.bnx2x* %109)
  br label %121

111:                                              ; preds = %104
  %112 = call i32 (...) @smp_mb__before_clear_bit()
  %113 = load i32, i32* @BNX2X_SP_RTNL_VFPF_STORM_RX_MODE, align 4
  %114 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %115 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %114, i32 0, i32 2
  %116 = call i32 @set_bit(i32 %113, i32* %115)
  %117 = call i32 (...) @smp_mb__after_clear_bit()
  %118 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %119 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %118, i32 0, i32 1
  %120 = call i32 @schedule_delayed_work(i32* %119, i32 0)
  br label %121

121:                                              ; preds = %13, %99, %111, %108
  ret void
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP(i32, i8*, i64) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_set_mc_list(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_set_uc_list(%struct.bnx2x*) #1

declare dso_local i32 @smp_mb__before_clear_bit(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_clear_bit(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i64 @IS_MF_ISCSI_SD(%struct.bnx2x*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_set_storm_rx_mode(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
