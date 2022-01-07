; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.bnx2x = type { i64, i64, i64, i64 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"set ring params command parameters: rx_pending = %d, tx_pending = %d\0A\00", align 1
@BNX2X_RECOVERY_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Handling parity error recovery. Try again later\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MAX_RX_AVAIL = common dso_local global i64 0, align 8
@MIN_RX_SIZE_NONTPA = common dso_local global i64 0, align 8
@MIN_RX_SIZE_TPA = common dso_local global i64 0, align 8
@MAX_TX_AVAIL = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Command parameters not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @bnx2x_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2x* %8, %struct.bnx2x** %6, align 8
  %9 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %10 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i32, i8*, ...) @DP(i32 %9, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BNX2X_RECOVERY_DONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %24 = call i32 (i32, i8*, ...) @DP(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %86

27:                                               ; preds = %2
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_RX_AVAIL, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %68, label %33

33:                                               ; preds = %27
  %34 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @MIN_RX_SIZE_NONTPA, align 8
  br label %45

43:                                               ; preds = %33
  %44 = load i64, i64* @MIN_RX_SIZE_TPA, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  %47 = icmp slt i64 %36, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %45
  %49 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %53 = call i64 @IS_MF_FCOE_AFEX(%struct.bnx2x* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %58

56:                                               ; preds = %48
  %57 = load i64, i64* @MAX_TX_AVAIL, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i64 [ 0, %55 ], [ %57, %56 ]
  %60 = icmp sgt i64 %51, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %66 = add nsw i64 %65, 4
  %67 = icmp sle i64 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61, %58, %45, %27
  %69 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %70 = call i32 (i32, i8*, ...) @DP(i32 %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %86

73:                                               ; preds = %61
  %74 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %78 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %80 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = call i32 @bnx2x_reload_if_running(%struct.net_device* %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %73, %68, %22
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @IS_MF_FCOE_AFEX(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_reload_if_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
