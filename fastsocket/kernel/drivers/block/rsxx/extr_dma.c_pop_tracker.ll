; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_pop_tracker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_pop_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_tracker_list = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_tracker_list*)* @pop_tracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_tracker(%struct.dma_tracker_list* %0) #0 {
  %2 = alloca %struct.dma_tracker_list*, align 8
  %3 = alloca i32, align 4
  store %struct.dma_tracker_list* %0, %struct.dma_tracker_list** %2, align 8
  %4 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %2, align 8
  %5 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %2, align 8
  %8 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %2, align 8
  %14 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %2, align 8
  %22 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %2, align 8
  %24 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  br label %30

30:                                               ; preds = %12, %1
  %31 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %2, align 8
  %32 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
