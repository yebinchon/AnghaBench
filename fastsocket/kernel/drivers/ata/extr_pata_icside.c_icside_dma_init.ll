; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_icside.c_icside_dma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_icside.c_icside_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pata_icside_info = type { i32, %struct.expansion_card*, %struct.pata_icside_state* }
%struct.expansion_card = type { i64 }
%struct.pata_icside_state = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ATA_MAX_DEVICES = common dso_local global i32 0, align 4
@NO_DMA = common dso_local global i64 0, align 8
@DRV_NAME = common dso_local global i32 0, align 4
@ATA_MWDMA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pata_icside_info*)* @icside_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icside_dma_init(%struct.pata_icside_info* %0) #0 {
  %2 = alloca %struct.pata_icside_info*, align 8
  %3 = alloca %struct.pata_icside_state*, align 8
  %4 = alloca %struct.expansion_card*, align 8
  %5 = alloca i32, align 4
  store %struct.pata_icside_info* %0, %struct.pata_icside_info** %2, align 8
  %6 = load %struct.pata_icside_info*, %struct.pata_icside_info** %2, align 8
  %7 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %6, i32 0, i32 2
  %8 = load %struct.pata_icside_state*, %struct.pata_icside_state** %7, align 8
  store %struct.pata_icside_state* %8, %struct.pata_icside_state** %3, align 8
  %9 = load %struct.pata_icside_info*, %struct.pata_icside_info** %2, align 8
  %10 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %9, i32 0, i32 1
  %11 = load %struct.expansion_card*, %struct.expansion_card** %10, align 8
  store %struct.expansion_card* %11, %struct.expansion_card** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %35, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ATA_MAX_DEVICES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load %struct.pata_icside_state*, %struct.pata_icside_state** %3, align 8
  %18 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 480, i32* %25, align 4
  %26 = load %struct.pata_icside_state*, %struct.pata_icside_state** %3, align 8
  %27 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 480, i32* %34, align 4
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %40 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NO_DMA, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %46 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @DRV_NAME, align 4
  %49 = call i32 @request_dma(i64 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %44
  %52 = load %struct.expansion_card*, %struct.expansion_card** %4, align 8
  %53 = getelementptr inbounds %struct.expansion_card, %struct.expansion_card* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.pata_icside_state*, %struct.pata_icside_state** %3, align 8
  %56 = getelementptr inbounds %struct.pata_icside_state, %struct.pata_icside_state* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @ATA_MWDMA2, align 4
  %58 = load %struct.pata_icside_info*, %struct.pata_icside_info** %2, align 8
  %59 = getelementptr inbounds %struct.pata_icside_info, %struct.pata_icside_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %51, %44, %38
  ret i32 0
}

declare dso_local i32 @request_dma(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
