; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_update_nic_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_update_nic_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32, i64*, i64 }

@FR_AZ_RX_NODESC_DROP = common dso_local global i32 0, align 4
@FRF_AB_RX_NODESC_DROP_CNT = common dso_local global i32 0, align 4
@FALCON_STATS_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_update_nic_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_update_nic_stats(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 1
  %7 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %6, align 8
  store %struct.falcon_nic_data* %7, %struct.falcon_nic_data** %3, align 8
  %8 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %9 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = load i32, i32* @FR_AZ_RX_NODESC_DROP, align 4
  %16 = call i32 @efx_reado(%struct.efx_nic* %14, i32* %4, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @FRF_AB_RX_NODESC_DROP_CNT, align 4
  %19 = call i64 @EFX_OWORD_FIELD(i32 %17, i32 %18)
  %20 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  %26 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %27 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %13
  %31 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %32 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FALCON_STATS_DONE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %39 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = call i32 (...) @rmb()
  %41 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %42 = call i32 @falcon_update_stats_xmac(%struct.efx_nic* %41)
  br label %43

43:                                               ; preds = %12, %37, %30, %13
  ret void
}

declare dso_local i32 @efx_reado(%struct.efx_nic*, i32*, i32) #1

declare dso_local i64 @EFX_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @falcon_update_stats_xmac(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
