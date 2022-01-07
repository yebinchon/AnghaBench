; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_isoc_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_isoc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32, i32, i32, %struct.uvd* }
%struct.uvd = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.konicawc = type { %struct.urb* }

@.str = private unnamed_addr constant [30 x i8] c"Not streaming, but interrupt!\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"got frame %d len = %d buflen =%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Lost sync on frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @konicawc_isoc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @konicawc_isoc_irq(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.uvd*, align 8
  %4 = alloca %struct.konicawc*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 4
  %8 = load %struct.uvd*, %struct.uvd** %7, align 8
  store %struct.uvd* %8, %struct.uvd** %3, align 8
  %9 = load %struct.uvd*, %struct.uvd** %3, align 8
  %10 = getelementptr inbounds %struct.uvd, %struct.uvd* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.konicawc*
  store %struct.konicawc* %12, %struct.konicawc** %4, align 8
  %13 = load %struct.uvd*, %struct.uvd** %3, align 8
  %14 = call i32 @CAMERA_IS_OPERATIONAL(%struct.uvd* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %114

17:                                               ; preds = %1
  %18 = load %struct.uvd*, %struct.uvd** %3, align 8
  %19 = getelementptr inbounds %struct.uvd, %struct.uvd* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 (i32, i8*, ...) @DEBUG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %114

24:                                               ; preds = %17
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, i8*, ...) @DEBUG(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %27, i32 %30, i32 %33)
  %35 = load %struct.uvd*, %struct.uvd** %3, align 8
  %36 = getelementptr inbounds %struct.uvd, %struct.uvd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 32
  br i1 %43, label %44, label %48

44:                                               ; preds = %24
  %45 = load %struct.urb*, %struct.urb** %2, align 8
  %46 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %47 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %46, i32 0, i32 0
  store %struct.urb* %45, %struct.urb** %47, align 8
  br label %114

48:                                               ; preds = %24
  %49 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %50 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %49, i32 0, i32 0
  %51 = load %struct.urb*, %struct.urb** %50, align 8
  %52 = icmp ne %struct.urb* %51, null
  br i1 %52, label %53, label %113

53:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  %54 = load %struct.urb*, %struct.urb** %2, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %58 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %57, i32 0, i32 0
  %59 = load %struct.urb*, %struct.urb** %58, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %56, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = call i32 @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %85

65:                                               ; preds = %53
  %66 = load %struct.urb*, %struct.urb** %2, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %65
  %71 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %72 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %71, i32 0, i32 0
  %73 = load %struct.urb*, %struct.urb** %72, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = load %struct.uvd*, %struct.uvd** %3, align 8
  %79 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %80 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %79, i32 0, i32 0
  %81 = load %struct.urb*, %struct.urb** %80, align 8
  %82 = load %struct.urb*, %struct.urb** %2, align 8
  %83 = call i32 @konicawc_compress_iso(%struct.uvd* %78, %struct.urb* %81, %struct.urb* %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %77, %70, %65
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.uvd*, %struct.uvd** %3, align 8
  %87 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %88 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %87, i32 0, i32 0
  %89 = load %struct.urb*, %struct.urb** %88, align 8
  %90 = call i32 @resubmit_urb(%struct.uvd* %86, %struct.urb* %89)
  %91 = load %struct.uvd*, %struct.uvd** %3, align 8
  %92 = load %struct.urb*, %struct.urb** %2, align 8
  %93 = call i32 @resubmit_urb(%struct.uvd* %91, %struct.urb* %92)
  %94 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %95 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %94, i32 0, i32 0
  store %struct.urb* null, %struct.urb** %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.uvd*, %struct.uvd** %3, align 8
  %98 = getelementptr inbounds %struct.uvd, %struct.uvd* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.uvd*, %struct.uvd** %3, align 8
  %102 = getelementptr inbounds %struct.uvd, %struct.uvd* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %100
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %85
  %109 = load %struct.uvd*, %struct.uvd** %3, align 8
  %110 = getelementptr inbounds %struct.uvd, %struct.uvd* %109, i32 0, i32 0
  %111 = call i32 @RingQueue_WakeUpInterruptible(i32* %110)
  br label %112

112:                                              ; preds = %108, %85
  br label %114

113:                                              ; preds = %48
  br label %114

114:                                              ; preds = %113, %112, %44, %22, %16
  ret void
}

declare dso_local i32 @CAMERA_IS_OPERATIONAL(%struct.uvd*) #1

declare dso_local i32 @DEBUG(i32, i8*, ...) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @konicawc_compress_iso(%struct.uvd*, %struct.urb*, %struct.urb*) #1

declare dso_local i32 @resubmit_urb(%struct.uvd*, %struct.urb*) #1

declare dso_local i32 @RingQueue_WakeUpInterruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
