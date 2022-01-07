; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_fini_rx_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_rx.c_efx_fini_rx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32, i32, i32, i32, %struct.page**, i64, i32, %struct.efx_nic* }
%struct.page = type { i32 }
%struct.efx_nic = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.efx_rx_buffer = type { i32 }
%struct.efx_rx_page_state = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"shutting down RX queue %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_fini_rx_queue(%struct.efx_rx_queue* %0) #0 {
  %2 = alloca %struct.efx_rx_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_rx_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.efx_rx_page_state*, align 8
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %2, align 8
  %9 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %10 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %9, i32 0, i32 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  store %struct.efx_nic* %11, %struct.efx_nic** %4, align 8
  %12 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %12, i32 0, i32 8
  %14 = load %struct.efx_nic*, %struct.efx_nic** %13, align 8
  %15 = load i32, i32* @drv, align 4
  %16 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %16, i32 0, i32 8
  %18 = load %struct.efx_nic*, %struct.efx_nic** %17, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %22 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %21)
  %23 = call i32 @netif_dbg(%struct.efx_nic* %14, i32 %15, i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %25 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %27 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %26, i32 0, i32 7
  %28 = call i32 @del_timer_sync(i32* %27)
  %29 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %30 = call i32 @efx_nic_fini_rx(%struct.efx_rx_queue* %29)
  %31 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %32 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %1
  %36 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %37 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %57, %35
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %42 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %48 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue* %51, i32 %52)
  store %struct.efx_rx_buffer* %53, %struct.efx_rx_buffer** %5, align 8
  %54 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %55 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %5, align 8
  %56 = call i32 @efx_fini_rx_buffer(%struct.efx_rx_queue* %54, %struct.efx_rx_buffer* %55)
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %39

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %1
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %98, %61
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %65 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp sle i32 %63, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %62
  %69 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %70 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %69, i32 0, i32 5
  %71 = load %struct.page**, %struct.page*** %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.page*, %struct.page** %71, i64 %73
  %75 = load %struct.page*, %struct.page** %74, align 8
  store %struct.page* %75, %struct.page** %7, align 8
  %76 = load %struct.page*, %struct.page** %7, align 8
  %77 = icmp eq %struct.page* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %98

79:                                               ; preds = %68
  %80 = load %struct.page*, %struct.page** %7, align 8
  %81 = call %struct.efx_rx_page_state* @page_address(%struct.page* %80)
  store %struct.efx_rx_page_state* %81, %struct.efx_rx_page_state** %8, align 8
  %82 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %83 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.efx_rx_page_state*, %struct.efx_rx_page_state** %8, align 8
  %87 = getelementptr inbounds %struct.efx_rx_page_state, %struct.efx_rx_page_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PAGE_SIZE, align 4
  %90 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %91 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %89, %92
  %94 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %95 = call i32 @dma_unmap_page(i32* %85, i32 %88, i32 %93, i32 %94)
  %96 = load %struct.page*, %struct.page** %7, align 8
  %97 = call i32 @put_page(%struct.page* %96)
  br label %98

98:                                               ; preds = %79, %78
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %62

101:                                              ; preds = %62
  %102 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %103 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %102, i32 0, i32 5
  %104 = load %struct.page**, %struct.page*** %103, align 8
  %105 = call i32 @kfree(%struct.page** %104)
  %106 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %2, align 8
  %107 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %106, i32 0, i32 5
  store %struct.page** null, %struct.page*** %107, align 8
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @efx_nic_fini_rx(%struct.efx_rx_queue*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue*, i32) #1

declare dso_local i32 @efx_fini_rx_buffer(%struct.efx_rx_queue*, %struct.efx_rx_buffer*) #1

declare dso_local %struct.efx_rx_page_state* @page_address(%struct.page*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
