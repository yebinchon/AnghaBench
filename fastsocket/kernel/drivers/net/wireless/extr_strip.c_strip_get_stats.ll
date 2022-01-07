; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_strip_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_strip_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.strip = type { i32, i32, i32, i32, i32, i32, i32 }

@strip_get_stats.stats = internal global %struct.net_device_stats zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @strip_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @strip_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.strip*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.strip* @netdev_priv(%struct.net_device* %4)
  store %struct.strip* %5, %struct.strip** %3, align 8
  %6 = call i32 @memset(%struct.net_device_stats* @strip_get_stats.stats, i32 0, i32 28)
  %7 = load %struct.strip*, %struct.strip** %3, align 8
  %8 = getelementptr inbounds %struct.strip, %struct.strip* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @strip_get_stats.stats, i32 0, i32 6), align 4
  %10 = load %struct.strip*, %struct.strip** %3, align 8
  %11 = getelementptr inbounds %struct.strip, %struct.strip* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @strip_get_stats.stats, i32 0, i32 5), align 4
  %13 = load %struct.strip*, %struct.strip** %3, align 8
  %14 = getelementptr inbounds %struct.strip, %struct.strip* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @strip_get_stats.stats, i32 0, i32 4), align 4
  %16 = load %struct.strip*, %struct.strip** %3, align 8
  %17 = getelementptr inbounds %struct.strip, %struct.strip* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @strip_get_stats.stats, i32 0, i32 3), align 4
  %19 = load %struct.strip*, %struct.strip** %3, align 8
  %20 = getelementptr inbounds %struct.strip, %struct.strip* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @strip_get_stats.stats, i32 0, i32 2), align 4
  %22 = load %struct.strip*, %struct.strip** %3, align 8
  %23 = getelementptr inbounds %struct.strip, %struct.strip* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @strip_get_stats.stats, i32 0, i32 1), align 4
  %25 = load %struct.strip*, %struct.strip** %3, align 8
  %26 = getelementptr inbounds %struct.strip, %struct.strip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.net_device_stats, %struct.net_device_stats* @strip_get_stats.stats, i32 0, i32 0), align 4
  ret %struct.net_device_stats* @strip_get_stats.stats
}

declare dso_local %struct.strip* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.net_device_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
