; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cris/extr_eth_v10.c_update_rx_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cris/extr_eth_v10.c_update_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32 }

@R_REC_COUNTERS = common dso_local global i64* null, align 8
@congestion = common dso_local global i32 0, align 4
@crc_error = common dso_local global i32 0, align 4
@alignment_error = common dso_local global i32 0, align 4
@oversize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device_stats*)* @update_rx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_rx_stats(%struct.net_device_stats* %0) #0 {
  %2 = alloca %struct.net_device_stats*, align 8
  %3 = alloca i64, align 8
  store %struct.net_device_stats* %0, %struct.net_device_stats** %2, align 8
  %4 = load i64*, i64** @R_REC_COUNTERS, align 8
  %5 = load i64, i64* %4, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i64*, i64** @R_REC_COUNTERS, align 8
  %7 = load i32, i32* @congestion, align 4
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @IO_EXTRACT(i64* %6, i32 %7, i64 %8)
  %10 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %11 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load i64*, i64** @R_REC_COUNTERS, align 8
  %17 = load i32, i32* @crc_error, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @IO_EXTRACT(i64* %16, i32 %17, i64 %18)
  %20 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load i64*, i64** @R_REC_COUNTERS, align 8
  %27 = load i32, i32* @alignment_error, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @IO_EXTRACT(i64* %26, i32 %27, i64 %28)
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load i64*, i64** @R_REC_COUNTERS, align 8
  %37 = load i32, i32* @oversize, align 4
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @IO_EXTRACT(i64* %36, i32 %37, i64 %38)
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  ret void
}

declare dso_local i64 @IO_EXTRACT(i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
