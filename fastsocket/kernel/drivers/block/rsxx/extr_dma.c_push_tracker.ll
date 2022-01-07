; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_push_tracker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_dma.c_push_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_tracker_list = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_tracker_list*, i32)* @push_tracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_tracker(%struct.dma_tracker_list* %0, i32 %1) #0 {
  %3 = alloca %struct.dma_tracker_list*, align 8
  %4 = alloca i32, align 4
  store %struct.dma_tracker_list* %0, %struct.dma_tracker_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %3, align 8
  %6 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %3, align 8
  %9 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %3, align 8
  %12 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %10, i32* %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %3, align 8
  %20 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %3, align 8
  %22 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.dma_tracker_list*, %struct.dma_tracker_list** %3, align 8
  %29 = getelementptr inbounds %struct.dma_tracker_list, %struct.dma_tracker_list* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
