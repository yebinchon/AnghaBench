; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_tx_dma_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_farsync.c_fst_tx_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.fst_card_info = type { i32 }
%struct.fst_port_info = type { i64 }
%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fst_tx_dma_complete\0A\00", align 1
@txDescrRing = common dso_local global %struct.TYPE_4__** null, align 8
@DMA_OWN = common dso_local global i32 0, align 4
@TX_STP = common dso_local global i32 0, align 4
@TX_ENP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fst_card_info*, %struct.fst_port_info*, i32, i32)* @fst_tx_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fst_tx_dma_complete(%struct.fst_card_info* %0, %struct.fst_port_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fst_card_info*, align 8
  %6 = alloca %struct.fst_port_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  store %struct.fst_card_info* %0, %struct.fst_card_info** %5, align 8
  store %struct.fst_port_info* %1, %struct.fst_port_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %11 = call %struct.net_device* @port_to_dev(%struct.fst_port_info* %10)
  store %struct.net_device* %11, %struct.net_device** %9, align 8
  %12 = load i32, i32* @DBG_TX, align 4
  %13 = call i32 @dbg(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.fst_card_info*, %struct.fst_card_info** %5, align 8
  %15 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @txDescrRing, align 8
  %16 = load %struct.fst_port_info*, %struct.fst_port_info** %6, align 8
  %17 = getelementptr inbounds %struct.fst_port_info, %struct.fst_port_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %15, i64 %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DMA_OWN, align 4
  %27 = load i32, i32* @TX_STP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @TX_ENP, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @FST_WRB(%struct.fst_card_info* %14, i32 %25, i32 %30)
  %32 = load %struct.net_device*, %struct.net_device** %9, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.net_device*, %struct.net_device** %9, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @jiffies, align 4
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local %struct.net_device* @port_to_dev(%struct.fst_port_info*) #1

declare dso_local i32 @dbg(i32, i8*) #1

declare dso_local i32 @FST_WRB(%struct.fst_card_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
