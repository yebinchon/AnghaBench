; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_setup_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd.c_dasd_setup_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DASD_FEATURE_USERAW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_block*)* @dasd_setup_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_setup_queue(%struct.dasd_block* %0) #0 {
  %2 = alloca %struct.dasd_block*, align 8
  %3 = alloca i32, align 4
  store %struct.dasd_block* %0, %struct.dasd_block** %2, align 8
  %4 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %4, i32 0, i32 3
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DASD_FEATURE_USERAW, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 2048, i32* %3, align 4
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %15 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %22 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %20, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %13, %12
  %26 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %27 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %30 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @blk_queue_logical_block_size(i32 %28, i32 %31)
  %33 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %34 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @blk_queue_max_hw_sectors(i32 %35, i32 %36)
  %38 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %39 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @blk_queue_max_segments(i32 %40, i64 -1)
  %42 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %43 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = call i32 @blk_queue_max_segment_size(i32 %44, i64 %45)
  %47 = load %struct.dasd_block*, %struct.dasd_block** %2, align 8
  %48 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @PAGE_SIZE, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @blk_queue_segment_boundary(i32 %49, i64 %51)
  ret void
}

declare dso_local i32 @blk_queue_logical_block_size(i32, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(i32, i32) #1

declare dso_local i32 @blk_queue_max_segments(i32, i64) #1

declare dso_local i32 @blk_queue_max_segment_size(i32, i64) #1

declare dso_local i32 @blk_queue_segment_boundary(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
