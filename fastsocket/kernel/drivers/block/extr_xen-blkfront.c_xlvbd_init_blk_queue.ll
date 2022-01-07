; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_xlvbd_init_blk_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_xlvbd_init_blk_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@do_blkif_request = common dso_local global i32 0, align 4
@blkif_io_lock = common dso_local global i32 0, align 4
@QUEUE_FLAG_VIRT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@BLKIF_MAX_SEGMENTS_PER_REQUEST = common dso_local global i32 0, align 4
@BLK_BOUNCE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i32)* @xlvbd_init_blk_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlvbd_init_blk_queue(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @do_blkif_request, align 4
  %8 = call %struct.request_queue* @blk_init_queue(i32 %7, i32* @blkif_io_lock)
  store %struct.request_queue* %8, %struct.request_queue** %6, align 8
  %9 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %10 = icmp eq %struct.request_queue* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i32, i32* @QUEUE_FLAG_VIRT, align 4
  %14 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %15 = call i32 @queue_flag_set_unlocked(i32 %13, %struct.request_queue* %14)
  %16 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @blk_queue_logical_block_size(%struct.request_queue* %16, i32 %17)
  %19 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %20 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %19, i32 512)
  %21 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @blk_queue_segment_boundary(%struct.request_queue* %21, i64 %23)
  %25 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %26 = load i64, i64* @PAGE_SIZE, align 8
  %27 = call i32 @blk_queue_max_segment_size(%struct.request_queue* %25, i64 %26)
  %28 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %29 = load i32, i32* @BLKIF_MAX_SEGMENTS_PER_REQUEST, align 4
  %30 = call i32 @blk_queue_max_segments(%struct.request_queue* %28, i32 %29)
  %31 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %32 = call i32 @blk_queue_dma_alignment(%struct.request_queue* %31, i32 511)
  %33 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %34 = load i32, i32* @BLK_BOUNCE_ANY, align 4
  %35 = call i32 @blk_queue_bounce_limit(%struct.request_queue* %33, i32 %34)
  %36 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %37 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %38 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %37, i32 0, i32 0
  store %struct.request_queue* %36, %struct.request_queue** %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %12, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.request_queue* @blk_init_queue(i32, i32*) #1

declare dso_local i32 @queue_flag_set_unlocked(i32, %struct.request_queue*) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_segment_boundary(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_max_segment_size(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_dma_alignment(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_bounce_limit(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
