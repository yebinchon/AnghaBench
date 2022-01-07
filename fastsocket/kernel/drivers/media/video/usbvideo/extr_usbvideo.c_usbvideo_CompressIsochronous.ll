; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_CompressIsochronous.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_CompressIsochronous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.urb = type { i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Data error: packet=%d. len=%d. status=%d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, %struct.urb*)* @usbvideo_CompressIsochronous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvideo_CompressIsochronous(%struct.uvd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %82, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.urb*, %struct.urb** %4, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %85

16:                                               ; preds = %10
  %17 = load %struct.urb*, %struct.urb** %4, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.urb*, %struct.urb** %4, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.urb*, %struct.urb** %4, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.urb*, %struct.urb** %4, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %35, i64 %44
  store i8* %45, i8** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %16
  %49 = load %struct.uvd*, %struct.uvd** %3, align 8
  %50 = getelementptr inbounds %struct.uvd, %struct.uvd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.uvd*, %struct.uvd** %3, align 8
  %60 = getelementptr inbounds %struct.uvd, %struct.uvd* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %82

64:                                               ; preds = %16
  %65 = load i32, i32* %8, align 4
  %66 = icmp sle i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.uvd*, %struct.uvd** %3, align 8
  %69 = getelementptr inbounds %struct.uvd, %struct.uvd* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %82

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.uvd*, %struct.uvd** %3, align 8
  %78 = getelementptr inbounds %struct.uvd, %struct.uvd* %77, i32 0, i32 1
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @RingQueue_Enqueue(i32* %78, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %67, %58
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %10

85:                                               ; preds = %10
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @err(i8*, i32, i32, i32) #1

declare dso_local i32 @RingQueue_Enqueue(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
