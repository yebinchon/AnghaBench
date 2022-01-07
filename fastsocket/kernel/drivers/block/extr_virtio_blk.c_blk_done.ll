; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_virtio_blk.c_blk_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_virtio_blk.c_blk_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.virtio_blk* }
%struct.virtio_blk = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.virtblk_req = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@ENOTTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i64 0, align 8
@REQ_TYPE_SPECIAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @blk_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_blk*, align 8
  %4 = alloca %struct.virtblk_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %8 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %9 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.virtio_blk*, %struct.virtio_blk** %11, align 8
  store %struct.virtio_blk* %12, %struct.virtio_blk** %3, align 8
  %13 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %14 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %88, %1
  %23 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %24 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.virtblk_req* @virtqueue_get_buf(i32 %25, i32* %5)
  store %struct.virtblk_req* %26, %struct.virtblk_req** %4, align 8
  %27 = icmp ne %struct.virtblk_req* %26, null
  br i1 %27, label %28, label %99

28:                                               ; preds = %22
  %29 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %30 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %36 [
    i32 129, label %32
    i32 128, label %33
  ]

32:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOTTY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %33, %32
  %40 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %41 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @REQ_TYPE_BLOCK_PC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %39
  %48 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %49 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %53 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  store i32 %51, i32* %55, align 8
  %56 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %57 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %61 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 4
  %64 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %65 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %69 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 8
  br label %72

72:                                               ; preds = %47, %39
  %73 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %74 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REQ_TYPE_SPECIAL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %85 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 8
  br label %88

88:                                               ; preds = %80, %72
  %89 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %90 = getelementptr inbounds %struct.virtblk_req, %struct.virtblk_req* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @__blk_end_request_all(%struct.TYPE_10__* %91, i32 %92)
  %94 = load %struct.virtblk_req*, %struct.virtblk_req** %4, align 8
  %95 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %96 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @mempool_free(%struct.virtblk_req* %94, i32 %97)
  br label %22

99:                                               ; preds = %22
  %100 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %101 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = call i32 @blk_start_queue(%struct.TYPE_9__* %104)
  %106 = load %struct.virtio_blk*, %struct.virtio_blk** %3, align 8
  %107 = getelementptr inbounds %struct.virtio_blk, %struct.virtio_blk* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32 %112, i64 %113)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.virtblk_req* @virtqueue_get_buf(i32, i32*) #1

declare dso_local i32 @__blk_end_request_all(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mempool_free(%struct.virtblk_req*, i32) #1

declare dso_local i32 @blk_start_queue(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
