; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_RingQueue_Enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_RingQueue_Enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RingQueue = type { i64, i32, i32 }

@wi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RingQueue_Enqueue(%struct.RingQueue* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.RingQueue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.RingQueue* %0, %struct.RingQueue** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.RingQueue*, %struct.RingQueue** %4, align 8
  %11 = icmp ne %struct.RingQueue* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.RingQueue*, %struct.RingQueue** %4, align 8
  %19 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %24

24:                                               ; preds = %57, %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %82

27:                                               ; preds = %24
  %28 = load %struct.RingQueue*, %struct.RingQueue** %4, align 8
  %29 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.RingQueue*, %struct.RingQueue** %4, align 8
  %32 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = sub nsw i64 %30, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.RingQueue*, %struct.RingQueue** %4, align 8
  %41 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = load %struct.RingQueue*, %struct.RingQueue** %4, align 8
  %43 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %39, %27
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %46
  %58 = load %struct.RingQueue*, %struct.RingQueue** %4, align 8
  %59 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.RingQueue*, %struct.RingQueue** %4, align 8
  %62 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %60, %63
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @memcpy(i32 %64, i8* %65, i32 %66)
  %68 = load %struct.RingQueue*, %struct.RingQueue** %4, align 8
  %69 = load i32, i32* @wi, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @RING_QUEUE_ADVANCE_INDEX(%struct.RingQueue* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %5, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %24

82:                                               ; preds = %24
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @RING_QUEUE_ADVANCE_INDEX(%struct.RingQueue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
