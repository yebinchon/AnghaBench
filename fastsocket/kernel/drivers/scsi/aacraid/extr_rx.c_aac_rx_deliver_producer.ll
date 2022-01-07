; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_deliver_producer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_deliver_producer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.fib = type { i32, %struct.aac_dev* }
%struct.aac_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.aac_queue* }
%struct.aac_queue = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32* }

@AdapNormCmdQueue = common dso_local global i64 0, align 8
@aac_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_rx_deliver_producer(%struct.fib* %0) #0 {
  %2 = alloca %struct.fib*, align 8
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.aac_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fib* %0, %struct.fib** %2, align 8
  %8 = load %struct.fib*, %struct.fib** %2, align 8
  %9 = getelementptr inbounds %struct.fib, %struct.fib* %8, i32 0, i32 1
  %10 = load %struct.aac_dev*, %struct.aac_dev** %9, align 8
  store %struct.aac_dev* %10, %struct.aac_dev** %3, align 8
  %11 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %12 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.aac_queue*, %struct.aac_queue** %14, align 8
  %16 = load i64, i64* @AdapNormCmdQueue, align 8
  %17 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %15, i64 %16
  store %struct.aac_queue* %17, %struct.aac_queue** %4, align 8
  store i64 0, i64* %7, align 8
  %18 = load %struct.aac_queue*, %struct.aac_queue** %4, align 8
  %19 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32 %20, i64 %21)
  %23 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %24 = load i64, i64* @AdapNormCmdQueue, align 8
  %25 = load %struct.fib*, %struct.fib** %2, align 8
  %26 = getelementptr inbounds %struct.fib, %struct.fib* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.fib*, %struct.fib** %2, align 8
  %29 = call i32 @aac_queue_get(%struct.aac_dev* %23, i64* %6, i64 %24, i32 %27, i32 1, %struct.fib* %28, i64* %7)
  %30 = load %struct.aac_queue*, %struct.aac_queue** %4, align 8
  %31 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @cpu_to_le32(i64 %35)
  %37 = load %struct.aac_queue*, %struct.aac_queue** %4, align 8
  %38 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32 %36, i32* %40, align 4
  %41 = load %struct.aac_queue*, %struct.aac_queue** %4, align 8
  %42 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32 %43, i64 %44)
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aac_config, i32 0, i32 0), align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %1
  %51 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %52 = load i64, i64* @AdapNormCmdQueue, align 8
  %53 = call i32 @aac_adapter_notify(%struct.aac_dev* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %1
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @aac_queue_get(%struct.aac_dev*, i64*, i64, i32, i32, %struct.fib*, i64*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @aac_adapter_notify(%struct.aac_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
