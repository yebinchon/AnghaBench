; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fst_port_info = type { i64, i32, %struct.fst_card_info* }
%struct.fst_card_info = type { i32 }

@DBG_ASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Tx timeout card %d port %d\0A\00", align 1
@ABORTTX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fst_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fst_port_info*, align 8
  %4 = alloca %struct.fst_card_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.fst_port_info* @dev_to_port(%struct.net_device* %5)
  store %struct.fst_port_info* %6, %struct.fst_port_info** %3, align 8
  %7 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %8 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %7, i32 0, i32 2
  %9 = load %struct.fst_card_info*, %struct.fst_card_info** %8, align 8
  store %struct.fst_card_info* %9, %struct.fst_card_info** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @DBG_ASS, align 4
  %21 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %22 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %25 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dbg(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %29 = load i32, i32* @ABORTTX, align 4
  %30 = call i32 @fst_issue_cmd(%struct.fst_port_info* %28, i32 %29)
  %31 = load i32, i32* @jiffies, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @netif_wake_queue(%struct.net_device* %34)
  %36 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %37 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  ret void
}

declare dso_local %struct.fst_port_info* @dev_to_port(%struct.net_device*) #1

declare dso_local i32 @dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @fst_issue_cmd(%struct.fst_port_info*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
