; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_sl_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_slip.c_sl_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.slip = type { %struct.slcompress*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.slcompress = type { i64, i64, i64, i64 }

@sl_get_stats.stats = internal global %struct.net_device_stats zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @sl_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @sl_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.slip*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.slip* @netdev_priv(%struct.net_device* %4)
  store %struct.slip* %5, %struct.slip** %3, align 8
  %6 = call i32 @memset(%struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 48)
  %7 = load %struct.slip*, %struct.slip** %3, align 8
  %8 = getelementptr inbounds %struct.slip, %struct.slip* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 11), align 4
  %10 = load %struct.slip*, %struct.slip** %3, align 8
  %11 = getelementptr inbounds %struct.slip, %struct.slip* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 10), align 4
  %13 = load %struct.slip*, %struct.slip** %3, align 8
  %14 = getelementptr inbounds %struct.slip, %struct.slip* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 9), align 4
  %16 = load %struct.slip*, %struct.slip** %3, align 8
  %17 = getelementptr inbounds %struct.slip, %struct.slip* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 8), align 4
  %19 = load %struct.slip*, %struct.slip** %3, align 8
  %20 = getelementptr inbounds %struct.slip, %struct.slip* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 2), align 4
  %22 = load %struct.slip*, %struct.slip** %3, align 8
  %23 = getelementptr inbounds %struct.slip, %struct.slip* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 7), align 4
  %25 = load %struct.slip*, %struct.slip** %3, align 8
  %26 = getelementptr inbounds %struct.slip, %struct.slip* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 6), align 4
  %28 = load %struct.slip*, %struct.slip** %3, align 8
  %29 = getelementptr inbounds %struct.slip, %struct.slip* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 5), align 4
  %31 = load %struct.slip*, %struct.slip** %3, align 8
  %32 = getelementptr inbounds %struct.slip, %struct.slip* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @sl_get_stats.stats, i32 0, i32 4), align 4
  ret %struct.net_device_stats* @sl_get_stats.stats
}

declare dso_local %struct.slip* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.net_device_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
