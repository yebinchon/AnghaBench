; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_nmclan_cs.c_pr_linux_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_nmclan_cs.c_pr_linux_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"pr_linux_stats\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c" rx_packets=%-7ld        tx_packets=%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c" rx_errors=%-7ld         tx_errors=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c" rx_dropped=%-7ld        tx_dropped=%ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c" multicast=%-7ld         collisions=%ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c" rx_length_errors=%-7ld  rx_over_errors=%ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c" rx_crc_errors=%-7ld     rx_frame_errors=%ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c" rx_fifo_errors=%-7ld    rx_missed_errors=%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c" tx_aborted_errors=%-7ld tx_carrier_errors=%ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c" tx_fifo_errors=%-7ld    tx_heartbeat_errors=%ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c" tx_window_errors=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device_stats*)* @pr_linux_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pr_linux_stats(%struct.net_device_stats* %0) #0 {
  %2 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device_stats* %0, %struct.net_device_stats** %2, align 8
  %3 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %5 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %4, i32 0, i32 18
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %8 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %7, i32 0, i32 17
  %9 = load i64, i64* %8, align 8
  %10 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %6, i64 %9)
  %11 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %12 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %11, i32 0, i32 16
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %15 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %14, i32 0, i32 15
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %13, i64 %16)
  %18 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %19 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %18, i32 0, i32 14
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %22 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %20, i64 %23)
  %25 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %26 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %25, i32 0, i32 12
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %29 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %28, i32 0, i32 11
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %27, i64 %30)
  %32 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %33 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %36 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %34, i64 %37)
  %39 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %40 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %43 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %41, i64 %44)
  %46 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %47 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %50 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i64 %48, i64 %51)
  %53 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %54 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %57 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i64 %55, i64 %58)
  %60 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %61 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i64 %62, i64 %65)
  %67 = load %struct.net_device_stats*, %struct.net_device_stats** %2, align 8
  %68 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i32, i8*, ...) @DEBUG(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %69)
  ret void
}

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
