; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-flush.c___blkdev_issue_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-flush.c___blkdev_issue_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32* }
%struct.request_queue = type { i32 }
%struct.bio = type { i32, i32*, %struct.block_device*, i32 }

@wait = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@bio_end_flush = common dso_local global i32 0, align 4
@WRITE_FLUSH = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__blkdev_issue_flush(%struct.block_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %11)
  store i32 0, i32* %10, align 4
  %13 = load %struct.block_device*, %struct.block_device** %5, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.block_device*, %struct.block_device** %5, align 8
  %22 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %21)
  store %struct.request_queue* %22, %struct.request_queue** %8, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %24 = icmp ne %struct.request_queue* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %72

28:                                               ; preds = %20
  %29 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %30 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %72

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.bio* @bio_alloc(i32 %37, i32 0)
  store %struct.bio* %38, %struct.bio** %9, align 8
  %39 = load i32, i32* @bio_end_flush, align 4
  %40 = load %struct.bio*, %struct.bio** %9, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.block_device*, %struct.block_device** %5, align 8
  %43 = load %struct.bio*, %struct.bio** %9, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 2
  store %struct.block_device* %42, %struct.block_device** %44, align 8
  %45 = load %struct.bio*, %struct.bio** %9, align 8
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %45, i32 0, i32 1
  store i32* @wait, i32** %46, align 8
  %47 = load %struct.bio*, %struct.bio** %9, align 8
  %48 = call i32 @bio_get(%struct.bio* %47)
  %49 = load i32, i32* @WRITE_FLUSH, align 4
  %50 = load %struct.bio*, %struct.bio** %9, align 8
  %51 = call i32 @submit_bio(i32 %49, %struct.bio* %50)
  %52 = call i32 @wait_for_completion(i32* @wait)
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %36
  %56 = load %struct.bio*, %struct.bio** %9, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %36
  %61 = load %struct.bio*, %struct.bio** %9, align 8
  %62 = load i32, i32* @BIO_UPTODATE, align 4
  %63 = call i32 @bio_flagged(%struct.bio* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.bio*, %struct.bio** %9, align 8
  %70 = call i32 @bio_put(%struct.bio* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %33, %25, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

declare dso_local i32 @submit_bio(i32, %struct.bio*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
