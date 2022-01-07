; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_init_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-probe.c_ide_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.request_queue*, %struct.TYPE_6__* }
%struct.request_queue = type { %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }

@PRD_ENTRIES = common dso_local global i32 0, align 4
@do_ide_request = common dso_local global i32 0, align 4
@PCI_DMA_BUS_IS_PHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ide_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_init_queue(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  store i32 256, i32* %6, align 4
  %11 = load i32, i32* @PRD_ENTRIES, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @do_ide_request, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = call i32 @hwif_to_node(%struct.TYPE_6__* %13)
  %15 = call %struct.request_queue* @blk_init_queue_node(i32 %12, i32* null, i32 %14)
  store %struct.request_queue* %15, %struct.request_queue** %4, align 8
  %16 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %17 = icmp ne %struct.request_queue* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %22 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %21, i32 0, i32 0
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %22, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %24 = call i32 @blk_queue_segment_boundary(%struct.request_queue* %23, i32 65535)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %19
  %35 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %35, i32 %36)
  %38 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @blk_queue_max_segments(%struct.request_queue* %38, i32 %39)
  %41 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store %struct.request_queue* %41, %struct.request_queue** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = call i32 @ide_toggle_bounce(%struct.TYPE_7__* %44, i32 1)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %34, %18
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.request_queue* @blk_init_queue_node(i32, i32*, i32) #1

declare dso_local i32 @hwif_to_node(%struct.TYPE_6__*) #1

declare dso_local i32 @blk_queue_segment_boundary(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @ide_toggle_bounce(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
