; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fst_port_info = type { i64, %struct.fst_card_info* }
%struct.fst_card_info = type { i32, i32, i64 }

@DMACSR1 = common dso_local global i64 0, align 8
@DMACSR0 = common dso_local global i64 0, align 8
@DBG_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Port Close: tx_dma_in_progress = %d (%x) rx_dma_in_progress = %d (%x)\0A\00", align 1
@FST_RAW = common dso_local global i64 0, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @fst_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fst_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fst_port_info*, align 8
  %4 = alloca %struct.fst_card_info*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fst_port_info* @dev_to_port(%struct.net_device* %7)
  store %struct.fst_port_info* %8, %struct.fst_port_info** %3, align 8
  %9 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %10 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %9, i32 0, i32 1
  %11 = load %struct.fst_card_info*, %struct.fst_card_info** %10, align 8
  store %struct.fst_card_info* %11, %struct.fst_card_info** %4, align 8
  %12 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %13 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DMACSR1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call zeroext i8 @inb(i64 %16)
  store i8 %17, i8* %5, align 1
  %18 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %19 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DMACSR0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call zeroext i8 @inb(i64 %22)
  store i8 %23, i8* %6, align 1
  %24 = load i32, i32* @DBG_OPEN, align 4
  %25 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %26 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8, i8* %5, align 1
  %29 = load %struct.fst_card_info*, %struct.fst_card_info** %4, align 8
  %30 = getelementptr inbounds %struct.fst_card_info, %struct.fst_card_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8, i8* %6, align 1
  %33 = call i32 @dbg(i32 %24, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %27, i8 zeroext %28, i32 %31, i8 zeroext %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @netif_stop_queue(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call %struct.fst_port_info* @dev_to_port(%struct.net_device* %36)
  %38 = call i32 @fst_closeport(%struct.fst_port_info* %37)
  %39 = load %struct.fst_port_info*, %struct.fst_port_info** %3, align 8
  %40 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FST_RAW, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @hdlc_close(%struct.net_device* %45)
  br label %47

47:                                               ; preds = %44, %1
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = call i32 @module_put(i32 %48)
  ret i32 0
}

declare dso_local %struct.fst_port_info* @dev_to_port(%struct.net_device*) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @dbg(i32, i8*, i32, i8 zeroext, i32, i8 zeroext) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @fst_closeport(%struct.fst_port_info*) #1

declare dso_local i32 @hdlc_close(%struct.net_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
