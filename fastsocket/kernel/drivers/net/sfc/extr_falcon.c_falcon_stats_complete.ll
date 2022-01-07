; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_stats_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_falcon.c_falcon_stats_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32, i64* }

@FALCON_STATS_DONE = common dso_local global i64 0, align 8
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timed out waiting for statistics\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @falcon_stats_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_stats_complete(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.falcon_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %5 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %4, i32 0, i32 1
  %6 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %5, align 8
  store %struct.falcon_nic_data* %6, %struct.falcon_nic_data** %3, align 8
  %7 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %8 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %32

12:                                               ; preds = %1
  %13 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %14 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %3, align 8
  %16 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FALCON_STATS_DONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = call i32 (...) @rmb()
  %23 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %24 = call i32 @falcon_update_stats_xmac(%struct.efx_nic* %23)
  br label %32

25:                                               ; preds = %12
  %26 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %27 = load i32, i32* @hw, align 4
  %28 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @netif_err(%struct.efx_nic* %26, i32 %27, i32 %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %11, %25, %21
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @falcon_update_stats_xmac(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
