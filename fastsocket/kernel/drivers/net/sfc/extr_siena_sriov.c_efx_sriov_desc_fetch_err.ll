; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_desc_fetch_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_siena_sriov.c_efx_sriov_desc_fetch_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_vf = type { i32, i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"VF %d DMA Q %d reports descriptor fetch error.\0A\00", align 1
@vfdi_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_sriov_desc_fetch_err(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_vf*, align 8
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @map_vi_index(%struct.efx_nic* %7, i32 %8, %struct.efx_vf** %5, i32* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %31

12:                                               ; preds = %2
  %13 = call i64 (...) @net_ratelimit()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %17 = load i32, i32* @hw, align 4
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %22 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @netif_err(%struct.efx_nic* %16, i32 %17, i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* @vfdi_workqueue, align 4
  %28 = load %struct.efx_vf*, %struct.efx_vf** %5, align 8
  %29 = getelementptr inbounds %struct.efx_vf, %struct.efx_vf* %28, i32 0, i32 0
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %26, %11
  ret void
}

declare dso_local i64 @map_vi_index(%struct.efx_nic*, i32, %struct.efx_vf**, i32*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
