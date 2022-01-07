; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-exec.c_blk_execute_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-exec.c_blk_execute_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.gendisk = type { i32 }
%struct.request = type { i8*, i64, i32*, i64, i32 }

@wait = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@blk_end_sync_rq = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_execute_rq(%struct.request_queue* %0, %struct.gendisk* %1, %struct.request* %2, i32 %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.gendisk* %1, %struct.gendisk** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %12)
  %14 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.request*, %struct.request** %7, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.request*, %struct.request** %7, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %4
  %27 = trunc i64 %15 to i32
  %28 = call i32 @memset(i8* %17, i32 0, i32 %27)
  %29 = load %struct.request*, %struct.request** %7, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 0
  store i8* %17, i8** %30, align 8
  %31 = load %struct.request*, %struct.request** %7, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %26, %4
  %34 = load %struct.request*, %struct.request** %7, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 2
  store i32* @wait, i32** %35, align 8
  %36 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %37 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %38 = load %struct.request*, %struct.request** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @blk_end_sync_rq, align 4
  %41 = call i32 @blk_execute_rq_nowait(%struct.request_queue* %36, %struct.gendisk* %37, %struct.request* %38, i32 %39, i32 %40)
  %42 = call i32 @wait_for_completion(i32* @wait)
  %43 = load %struct.request*, %struct.request** %7, align 8
  %44 = getelementptr inbounds %struct.request, %struct.request* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %33
  %51 = load i32, i32* %11, align 4
  %52 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 %51
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @blk_execute_rq_nowait(%struct.request_queue*, %struct.gendisk*, %struct.request*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
