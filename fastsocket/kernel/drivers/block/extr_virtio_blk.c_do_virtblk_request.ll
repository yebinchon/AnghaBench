; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_virtio_blk.c_do_virtblk_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_virtio_blk.c_do_virtblk_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.virtio_blk* }
%struct.virtio_blk = type { i64, i32 }
%struct.request = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @do_virtblk_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_virtblk_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.virtio_blk*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load %struct.virtio_blk*, %struct.virtio_blk** %7, align 8
  store %struct.virtio_blk* %8, %struct.virtio_blk** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %11 = call %struct.request* @blk_peek_request(%struct.request_queue* %10)
  store %struct.request* %11, %struct.request** %4, align 8
  %12 = icmp ne %struct.request* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load %struct.request*, %struct.request** %4, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 2
  %18 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %19 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %25 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %26 = load %struct.request*, %struct.request** %4, align 8
  %27 = call i32 @do_req(%struct.request_queue* %24, %struct.virtio_blk* %25, %struct.request* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %13
  %30 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %31 = call i32 @blk_stop_queue(%struct.request_queue* %30)
  br label %37

32:                                               ; preds = %13
  %33 = load %struct.request*, %struct.request** %4, align 8
  %34 = call i32 @blk_start_request(%struct.request* %33)
  %35 = load i32, i32* %5, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %9

37:                                               ; preds = %29, %9
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %42 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @virtqueue_kick(i32 %43)
  br label %45

45:                                               ; preds = %40, %37
  ret void
}

declare dso_local %struct.request* @blk_peek_request(%struct.request_queue*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_req(%struct.request_queue*, %struct.virtio_blk*, %struct.request*) #1

declare dso_local i32 @blk_stop_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i32 @virtqueue_kick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
