; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_stats_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_stats_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__, %struct.falcon_nic_data* }
%struct.TYPE_2__ = type { i32 }
%struct.falcon_nic_data = type { i32, i32, i32, i32* }

@FALCON_STATS_NOT_DONE = common dso_local global i32 0, align 4
@FRF_AB_MAC_STAT_DMA_CMD = common dso_local global i32 0, align 4
@FRF_AB_MAC_STAT_DMA_ADR = common dso_local global i32 0, align 4
@FR_AB_MAC_STAT_DMA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_stats_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_stats_request(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 1
  %7 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  store %struct.falcon_nic_data* %7, %struct.falcon_nic_data** %3, align 8
  %8 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %9 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %13 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %17 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %49

21:                                               ; preds = %1
  %22 = load i32, i32* @FALCON_STATS_NOT_DONE, align 4
  %23 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %24 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32 %22, i32* %25, align 4
  %26 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %27 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = call i32 (...) @wmb()
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @FRF_AB_MAC_STAT_DMA_CMD, align 4
  %31 = load i32, i32* @FRF_AB_MAC_STAT_DMA_ADR, align 4
  %32 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @EFX_POPULATE_OWORD_2(i32 %29, i32 %30, i32 1, i32 %31, i32 %35)
  %37 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %38 = load i32, i32* @FR_AB_MAC_STAT_DMA, align 4
  %39 = call i32 @efx_writeo(%struct.efx_nic* %37, i32* %4, i32 %38)
  %40 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %41 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %40, i32 0, i32 2
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i32, i32* @HZ, align 4
  %44 = sdiv i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = call i32 @round_jiffies_up(i64 %46)
  %48 = call i32 @mod_timer(i32* %41, i32 %47)
  br label %49

49:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @EFX_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_writeo(%struct.efx_nic*, i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
