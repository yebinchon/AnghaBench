; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_dequeue_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_tx.c_efx_dequeue_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, i32, i32, %struct.efx_tx_buffer*, %struct.efx_nic* }
%struct.efx_tx_buffer = type { i64 }
%struct.efx_nic = type { i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"TX queue %d spurious TX completion id %x\0A\00", align 1
@RESET_TYPE_TX_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_tx_queue*, i32)* @efx_dequeue_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_dequeue_buffers(%struct.efx_tx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_tx_buffer*, align 8
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %10 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %9, i32 0, i32 4
  %11 = load %struct.efx_nic*, %struct.efx_nic** %10, align 8
  store %struct.efx_nic* %11, %struct.efx_nic** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, 1
  %14 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %15 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %13, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %19 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %20, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %57, %2
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %25
  %30 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %31 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %30, i32 0, i32 3
  %32 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %32, i64 %34
  store %struct.efx_tx_buffer* %35, %struct.efx_tx_buffer** %8, align 8
  %36 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %37 = getelementptr inbounds %struct.efx_tx_buffer, %struct.efx_tx_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %29
  %44 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %45 = load i32, i32* @tx_err, align 4
  %46 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %47 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %50 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @netif_err(%struct.efx_nic* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %55 = load i32, i32* @RESET_TYPE_TX_SKIP, align 4
  %56 = call i32 @efx_schedule_reset(%struct.efx_nic* %54, i32 %55)
  br label %72

57:                                               ; preds = %29
  %58 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %59 = load %struct.efx_tx_buffer*, %struct.efx_tx_buffer** %8, align 8
  %60 = call i32 @efx_dequeue_buffer(%struct.efx_tx_queue* %58, %struct.efx_tx_buffer* %59)
  %61 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %62 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %66 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %69 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %67, %70
  store i32 %71, i32* %7, align 4
  br label %25

72:                                               ; preds = %43, %25
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @efx_schedule_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_dequeue_buffer(%struct.efx_tx_queue*, %struct.efx_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
