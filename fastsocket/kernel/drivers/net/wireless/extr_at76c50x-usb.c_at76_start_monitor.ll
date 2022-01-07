; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_start_monitor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_start_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { i32, i32, i32, i32 }
%struct.at76_req_scan = type { i8*, i8*, i8*, i64, i32, i32, %struct.at76_req_scan* }

@ETH_ALEN = common dso_local global i32 0, align 4
@SCAN_TYPE_PASSIVE = common dso_local global i32 0, align 4
@CMD_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at76_priv*)* @at76_start_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_start_monitor(%struct.at76_priv* %0) #0 {
  %2 = alloca %struct.at76_priv*, align 8
  %3 = alloca %struct.at76_req_scan, align 8
  %4 = alloca i32, align 4
  store %struct.at76_priv* %0, %struct.at76_priv** %2, align 8
  %5 = call i32 @memset(%struct.at76_req_scan* %3, i32 0, i32 48)
  %6 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 6
  %7 = load %struct.at76_req_scan*, %struct.at76_req_scan** %6, align 8
  %8 = load i32, i32* @ETH_ALEN, align 4
  %9 = call i32 @memset(%struct.at76_req_scan* %7, i32 255, i32 %8)
  %10 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %11 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 5
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @SCAN_TYPE_PASSIVE, align 4
  %15 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %18 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %23 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le16(i32 %24)
  %26 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = call i8* @cpu_to_le16(i32 0)
  %28 = getelementptr inbounds %struct.at76_req_scan, %struct.at76_req_scan* %3, i32 0, i32 0
  store i8* %27, i8** %28, align 8
  %29 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %30 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CMD_SCAN, align 4
  %33 = call i32 @at76_set_card_command(i32 %31, i32 %32, %struct.at76_req_scan* %3, i32 48)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %38 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CMD_SCAN, align 4
  %41 = call i32 @at76_get_cmd_status(i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %1
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.at76_req_scan*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @at76_set_card_command(i32, i32, %struct.at76_req_scan*, i32) #1

declare dso_local i32 @at76_get_cmd_status(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
