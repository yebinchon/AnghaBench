; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_restart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.net_device_stats }
%struct.TYPE_4__ = type { i32 }
%struct.net_device_stats = type { i32, i32 }
%struct.can_priv = type { i32 (%struct.net_device*, i32)*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device* }
%struct.can_frame = type { i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_CAN = common dso_local global i32 0, align 4
@CAN_ERR_FLAG = common dso_local global i32 0, align 4
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@CAN_ERR_DLC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"restarted\0A\00", align 1
@CAN_MODE_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Error %d during restart\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_restart(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.can_priv*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.can_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.can_priv* %12, %struct.can_priv** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  store %struct.net_device_stats* %14, %struct.net_device_stats** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netif_carrier_ok(%struct.net_device* %15)
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i32 @can_flush_echo_skb(%struct.net_device* %18)
  %20 = call %struct.sk_buff* @dev_alloc_skb(i32 16)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  br label %62

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load i32, i32* @ETH_P_CAN, align 4
  %31 = call i32 @htons(i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i64 @skb_put(%struct.sk_buff* %34, i32 16)
  %36 = inttoptr i64 %35 to %struct.can_frame*
  store %struct.can_frame* %36, %struct.can_frame** %7, align 8
  %37 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %38 = call i32 @memset(%struct.can_frame* %37, i32 0, i32 16)
  %39 = load i32, i32* @CAN_ERR_FLAG, align 4
  %40 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %43 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* @CAN_ERR_DLC, align 8
  %45 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %46 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @netif_rx(%struct.sk_buff* %47)
  %49 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %50 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %54 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %57 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  br label %62

62:                                               ; preds = %26, %23
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %69 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.can_priv*, %struct.can_priv** %4, align 8
  %74 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %73, i32 0, i32 0
  %75 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = load i32, i32* @CAN_MODE_START, align 4
  %78 = call i32 %75(%struct.net_device* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @netif_carrier_on(%struct.net_device* %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %62
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %83, %62
  ret void
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @can_flush_echo_skb(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.can_frame*, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
