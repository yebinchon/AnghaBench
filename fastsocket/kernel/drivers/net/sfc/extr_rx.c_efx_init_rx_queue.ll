; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_init_rx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_init_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32, i32, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"initialising RX queue %d\0A\00", align 1
@EFX_RXD_HEAD_ROOM = common dso_local global i32 0, align 4
@rx_refill_threshold = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_init_rx_queue(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %7 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %8 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %7, i32 0, i32 13
  %9 = load %struct.efx_nic*, %struct.efx_nic** %8, align 8
  store %struct.efx_nic* %9, %struct.efx_nic** %3, align 8
  %10 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %10, i32 0, i32 13
  %12 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %13 = load i32, i32* @drv, align 4
  %14 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %15 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %14, i32 0, i32 13
  %16 = load %struct.efx_nic*, %struct.efx_nic** %15, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %20 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %19)
  %21 = call i32 @netif_dbg(%struct.efx_nic* %12, i32 %13, i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %22, i32 0, i32 12
  store i64 0, i64* %23, align 8
  %24 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %25 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %24, i32 0, i32 11
  store i64 0, i64* %25, align 8
  %26 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %27 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %26, i32 0, i32 10
  store i64 0, i64* %27, align 8
  %28 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %29 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %31 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %32 = call i32 @efx_init_rx_recycle_ring(%struct.efx_nic* %30, %struct.efx_rx_queue* %31)
  %33 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %34 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %33, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %36 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %40 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %39, i32 0, i32 8
  store i64 %38, i64* %40, align 8
  %41 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %42 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %44 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %46 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %48 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @EFX_RXD_HEAD_ROOM, align 4
  %51 = sub i32 %49, %50
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %54 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = mul i32 %55, %58
  %60 = sub i32 %52, %59
  store i32 %60, i32* %6, align 4
  %61 = load i64, i64* @rx_refill_threshold, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %1
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* @rx_refill_threshold, align 8
  %66 = call i32 @min(i64 %65, i32 100)
  %67 = mul i32 %64, %66
  %68 = udiv i32 %67, 100
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ugt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %63
  br label %77

75:                                               ; preds = %1
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %74
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %80 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %83 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %85 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %84, i32 0, i32 3
  store i32 1, i32* %85, align 4
  %86 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %87 = call i32 @efx_nic_init_rx(%struct.efx_rx_queue* %86)
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_init_rx_recycle_ring(%struct.efx_nic*, %struct.efx_rx_queue*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @efx_nic_init_rx(%struct.efx_rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
