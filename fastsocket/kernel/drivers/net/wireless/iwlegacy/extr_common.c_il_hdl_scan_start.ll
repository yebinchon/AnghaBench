; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_hdl_scan_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_hdl_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.il_scanstart_notification = type { i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [69 x i8] c"Scan start: %d [802.11%s] (TSF: 0x%08X:%08X) - %d (beacon timer %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bg\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il_hdl_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_hdl_scan_start(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca %struct.il_scanstart_notification*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %7 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %8 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %7)
  store %struct.il_rx_pkt* %8, %struct.il_rx_pkt** %5, align 8
  %9 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %10 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.il_scanstart_notification*
  store %struct.il_scanstart_notification* %13, %struct.il_scanstart_notification** %6, align 8
  %14 = load %struct.il_scanstart_notification*, %struct.il_scanstart_notification** %6, align 8
  %15 = getelementptr inbounds %struct.il_scanstart_notification, %struct.il_scanstart_notification* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %19 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.il_scanstart_notification*, %struct.il_scanstart_notification** %6, align 8
  %21 = getelementptr inbounds %struct.il_scanstart_notification, %struct.il_scanstart_notification* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.il_scanstart_notification*, %struct.il_scanstart_notification** %6, align 8
  %24 = getelementptr inbounds %struct.il_scanstart_notification, %struct.il_scanstart_notification* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %29 = load %struct.il_scanstart_notification*, %struct.il_scanstart_notification** %6, align 8
  %30 = getelementptr inbounds %struct.il_scanstart_notification, %struct.il_scanstart_notification* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load %struct.il_scanstart_notification*, %struct.il_scanstart_notification** %6, align 8
  %34 = getelementptr inbounds %struct.il_scanstart_notification, %struct.il_scanstart_notification* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = load %struct.il_scanstart_notification*, %struct.il_scanstart_notification** %6, align 8
  %38 = getelementptr inbounds %struct.il_scanstart_notification, %struct.il_scanstart_notification* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.il_scanstart_notification*, %struct.il_scanstart_notification** %6, align 8
  %41 = getelementptr inbounds %struct.il_scanstart_notification, %struct.il_scanstart_notification* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @D_SCAN(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %28, i32 %32, i32 %36, i32 %39, i32 %42)
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @D_SCAN(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
