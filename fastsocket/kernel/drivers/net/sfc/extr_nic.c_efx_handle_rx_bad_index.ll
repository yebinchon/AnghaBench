; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_handle_rx_bad_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_nic.c_efx_handle_rx_bad_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32 }
%struct.efx_channel = type { i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"dropped %d events (index=%d expected=%d)\0A\00", align 1
@RESET_TYPE_RX_RECOVERY = common dso_local global i32 0, align 4
@RESET_TYPE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_rx_queue*, i32)* @efx_handle_rx_bad_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_handle_rx_bad_index(%struct.efx_rx_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_rx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_channel*, align 8
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %11 = call %struct.efx_channel* @efx_rx_queue_channel(%struct.efx_rx_queue* %10)
  store %struct.efx_channel* %11, %struct.efx_channel** %6, align 8
  %12 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %12, i32 0, i32 3
  %14 = load %struct.efx_nic*, %struct.efx_nic** %13, align 8
  store %struct.efx_nic* %14, %struct.efx_nic** %7, align 8
  %15 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %16 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %22 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %25 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %23, %26
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %30 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  %33 = icmp eq i32 %20, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.efx_channel*, %struct.efx_channel** %6, align 8
  %36 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  store i32 1, i32* %3, align 4
  br label %74

39:                                               ; preds = %19, %2
  %40 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %41 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %44 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %42, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %47, %48
  %50 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %4, align 8
  %51 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %49, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %55 = load i32, i32* @rx_err, align 4
  %56 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @netif_info(%struct.efx_nic* %54, i32 %55, i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  %63 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %64 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %65 = call i64 @EFX_WORKAROUND_5676(%struct.efx_nic* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %39
  %68 = load i32, i32* @RESET_TYPE_RX_RECOVERY, align 4
  br label %71

69:                                               ; preds = %39
  %70 = load i32, i32* @RESET_TYPE_DISABLE, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = call i32 @efx_schedule_reset(%struct.efx_nic* %63, i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %34
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.efx_channel* @efx_rx_queue_channel(%struct.efx_rx_queue*) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i64 @EFX_WORKAROUND_5676(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
