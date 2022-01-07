; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_update_rx_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_update_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.au1000_private = type { i32 }

@RX_MCAST_FRAME = common dso_local global i32 0, align 4
@RX_ERROR = common dso_local global i32 0, align 4
@RX_MISSED_FRAME = common dso_local global i32 0, align 4
@RX_OVERLEN = common dso_local global i32 0, align 4
@RX_RUNT = common dso_local global i32 0, align 4
@RX_LEN_ERROR = common dso_local global i32 0, align 4
@RX_CRC_ERROR = common dso_local global i32 0, align 4
@RX_COLL = common dso_local global i32 0, align 4
@RX_FRAME_LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @update_rx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_rx_stats(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au1000_private*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %7)
  store %struct.au1000_private* %8, %struct.au1000_private** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  store %struct.net_device_stats* %10, %struct.net_device_stats** %6, align 8
  %11 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %12 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RX_MCAST_FRAME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @RX_ERROR, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %78

29:                                               ; preds = %24
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @RX_MISSED_FRAME, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %40 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %38, %29
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @RX_OVERLEN, align 4
  %46 = load i32, i32* @RX_RUNT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RX_LEN_ERROR, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %44, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %54 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %43
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @RX_CRC_ERROR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RX_COLL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %74 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %72, %67
  br label %86

78:                                               ; preds = %24
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @RX_FRAME_LEN_MASK, align 4
  %81 = and i32 %79, %80
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %77
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
