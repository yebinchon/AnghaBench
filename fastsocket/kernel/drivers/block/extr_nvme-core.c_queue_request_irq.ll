; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_queue_request_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_queue_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_queue = type { i64 }

@use_threaded_interrupts = common dso_local global i64 0, align 8
@nvme_irq_check = common dso_local global i32 0, align 4
@nvme_irq = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, %struct.nvme_queue*, i8*)* @queue_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_request_irq(%struct.nvme_dev* %0, %struct.nvme_queue* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca %struct.nvme_queue*, align 8
  %7 = alloca i8*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %5, align 8
  store %struct.nvme_queue* %1, %struct.nvme_queue** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i64, i64* @use_threaded_interrupts, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %15 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @nvme_irq_check, align 4
  %21 = load i32, i32* @nvme_irq, align 4
  %22 = load i32, i32* @IRQF_DISABLED, align 4
  %23 = load i32, i32* @IRQF_SHARED, align 4
  %24 = or i32 %22, %23
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %27 = call i32 @request_threaded_irq(i32 %19, i32 %20, i32 %21, i32 %24, i8* %25, %struct.nvme_queue* %26)
  store i32 %27, i32* %4, align 4
  br label %45

28:                                               ; preds = %3
  %29 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %30 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %33 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @nvme_irq, align 4
  %39 = load i32, i32* @IRQF_DISABLED, align 4
  %40 = load i32, i32* @IRQF_SHARED, align 4
  %41 = or i32 %39, %40
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.nvme_queue*, %struct.nvme_queue** %6, align 8
  %44 = call i32 @request_irq(i32 %37, i32 %38, i32 %41, i8* %42, %struct.nvme_queue* %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %28, %10
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.nvme_queue*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.nvme_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
