; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sonic.c_sonic_get_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sonic.c_sonic_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.sonic_local = type { %struct.net_device_stats }

@SONIC_CRCT = common dso_local global i32 0, align 4
@SONIC_FAET = common dso_local global i32 0, align 4
@SONIC_MPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @sonic_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @sonic_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sonic_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %4)
  store %struct.sonic_local* %5, %struct.sonic_local** %3, align 8
  %6 = load i32, i32* @SONIC_CRCT, align 4
  %7 = call i64 @SONIC_READ(i32 %6)
  %8 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %9 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %12, %7
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @SONIC_CRCT, align 4
  %16 = call i32 @SONIC_WRITE(i32 %15, i32 65535)
  %17 = load i32, i32* @SONIC_FAET, align 4
  %18 = call i64 @SONIC_READ(i32 %17)
  %19 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %20 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %18
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* @SONIC_FAET, align 4
  %27 = call i32 @SONIC_WRITE(i32 %26, i32 65535)
  %28 = load i32, i32* @SONIC_MPT, align 4
  %29 = call i64 @SONIC_READ(i32 %28)
  %30 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %31 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %29
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load i32, i32* @SONIC_MPT, align 4
  %38 = call i32 @SONIC_WRITE(i32 %37, i32 65535)
  %39 = load %struct.sonic_local*, %struct.sonic_local** %3, align 8
  %40 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %39, i32 0, i32 0
  ret %struct.net_device_stats* %40
}

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @SONIC_READ(i32) #1

declare dso_local i32 @SONIC_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
