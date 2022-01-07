; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_RingQueue_Allocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_RingQueue_Allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RingQueue = type { i32, i32*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RingQueue*, i32)* @RingQueue_Allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RingQueue_Allocate(%struct.RingQueue* %0, i32 %1) #0 {
  %3 = alloca %struct.RingQueue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.RingQueue* %0, %struct.RingQueue** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.RingQueue*, %struct.RingQueue** %3, align 8
  %7 = icmp ne %struct.RingQueue* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  br label %14

14:                                               ; preds = %19, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %14

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = shl i32 1, %25
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.RingQueue*, %struct.RingQueue** %3, align 8
  %34 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.RingQueue*, %struct.RingQueue** %3, align 8
  %36 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.RingQueue*, %struct.RingQueue** %3, align 8
  %38 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.RingQueue*, %struct.RingQueue** %3, align 8
  %40 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32* @usbvideo_rvmalloc(i32 %41)
  %43 = load %struct.RingQueue*, %struct.RingQueue** %3, align 8
  %44 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.RingQueue*, %struct.RingQueue** %3, align 8
  %46 = getelementptr inbounds %struct.RingQueue, %struct.RingQueue* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @usbvideo_rvmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
