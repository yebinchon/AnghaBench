; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_xmit_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_xmit_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, i32, i32, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i32, i32 }

@EFX_EMPTY_COUNT_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_xmit_done(%struct.efx_tx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_tx_queue*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %9 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %8, i32 0, i32 7
  %10 = load %struct.efx_nic*, %struct.efx_nic** %9, align 8
  store %struct.efx_nic* %10, %struct.efx_nic** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %13 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ugt i32 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @EFX_BUG_ON_PARANOID(i32 %16)
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @efx_dequeue_buffers(%struct.efx_tx_queue* %18, i32 %19)
  %21 = call i32 (...) @smp_mb()
  %22 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %23 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netif_tx_queue_stopped(i32 %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %2
  %29 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %70

34:                                               ; preds = %28
  %35 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_device_present(i32 %37)
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %34
  %42 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %43 = call %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue* %42)
  store %struct.efx_tx_queue* %43, %struct.efx_tx_queue** %7, align 8
  %44 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %45 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %48 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  %51 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %7, align 8
  %52 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %7, align 8
  %55 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = call i32 @max(i32 %50, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ule i32 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %41
  %65 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %66 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @netif_tx_wake_queue(i32 %67)
  br label %69

69:                                               ; preds = %64, %41
  br label %70

70:                                               ; preds = %69, %34, %28, %2
  %71 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %72 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %75 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %70
  %80 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %81 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ACCESS_ONCE(i32 %82)
  %84 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %85 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %87 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %90 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %79
  %94 = call i32 (...) @smp_mb()
  %95 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %96 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @EFX_EMPTY_COUNT_VALID, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %101 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %93, %79
  br label %103

103:                                              ; preds = %102, %70
  ret void
}

declare dso_local i32 @EFX_BUG_ON_PARANOID(i32) #1

declare dso_local i32 @efx_dequeue_buffers(%struct.efx_tx_queue*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_tx_queue_stopped(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_device_present(i32) #1

declare dso_local %struct.efx_tx_queue* @efx_tx_queue_partner(%struct.efx_tx_queue*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @netif_tx_wake_queue(i32) #1

declare dso_local i32 @ACCESS_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
