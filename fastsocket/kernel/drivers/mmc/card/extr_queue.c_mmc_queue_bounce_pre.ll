; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_queue.c_mmc_queue_bounce_pre.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_queue.c_mmc_queue_bounce_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_queue = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@WRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mmc_queue_bounce_pre(%struct.mmc_queue* %0) #0 {
  %2 = alloca %struct.mmc_queue*, align 8
  %3 = alloca i64, align 8
  store %struct.mmc_queue* %0, %struct.mmc_queue** %2, align 8
  %4 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %5 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %38

9:                                                ; preds = %1
  %10 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %11 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @rq_data_dir(i32 %12)
  %14 = load i64, i64* @WRITE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %38

17:                                               ; preds = %9
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @local_irq_save(i64 %18)
  %20 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %21 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %24 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %27 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mmc_queue*, %struct.mmc_queue** %2, align 8
  %30 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sg_copy_to_buffer(i32 %22, i32 %25, i32 %28, i32 %34)
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  br label %38

38:                                               ; preds = %17, %16, %8
  ret void
}

declare dso_local i64 @rq_data_dir(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
