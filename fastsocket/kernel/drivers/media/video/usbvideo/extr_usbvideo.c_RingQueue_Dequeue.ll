; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_RingQueue_Dequeue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_RingQueue_Dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RingQueue = type { i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RingQueue_Dequeue(%struct.RingQueue* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.RingQueue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.RingQueue* %0, %struct.RingQueue** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %12 = icmp ne %struct.RingQueue* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %20 = call i32 @RingQueue_GetLength(%struct.RingQueue* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %120

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %33 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %36 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %30
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %42 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %45 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %43, %46
  %48 = icmp slt i32 %40, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %9, align 4
  br label %59

51:                                               ; preds = %39
  %52 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %53 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %56 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  br label %59

59:                                               ; preds = %51, %49
  %60 = phi i32 [ %50, %49 ], [ %58, %51 ]
  store i32 %60, i32* %10, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %63 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %66 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %64, %68
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @memcpy(i8* %61, i64 %69, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %6, align 8
  %79 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %80 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %85 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %83, %87
  %89 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %90 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %59, %30
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %91
  %95 = load i8*, i8** %6, align 8
  %96 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %97 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %100 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %98, %102
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @memcpy(i8* %95, i64 %103, i32 %104)
  %106 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %107 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %108, %109
  %111 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %112 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 1
  %115 = and i32 %110, %114
  %116 = load %struct.RingQueue*, %struct.RingQueue** %5, align 8
  %117 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %94, %91
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %23
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RingQueue_GetLength(%struct.RingQueue*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
