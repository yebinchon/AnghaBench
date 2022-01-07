; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_stop_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_stop_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i32, i32, i32*, i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.konicawc = type { i32*, i32* }

@USBVIDEO_NUMSBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"usb_set_interface() error %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @konicawc_stop_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @konicawc_stop_data(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.konicawc*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %6 = load %struct.uvd*, %struct.uvd** %2, align 8
  %7 = icmp eq %struct.uvd* %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.uvd*, %struct.uvd** %2, align 8
  %10 = getelementptr inbounds %struct.uvd, %struct.uvd* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.uvd*, %struct.uvd** %2, align 8
  %15 = getelementptr inbounds %struct.uvd, %struct.uvd* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %8, %1
  br label %80

19:                                               ; preds = %13
  %20 = load %struct.uvd*, %struct.uvd** %2, align 8
  %21 = call i32 @konicawc_camera_off(%struct.uvd* %20)
  %22 = load %struct.uvd*, %struct.uvd** %2, align 8
  %23 = getelementptr inbounds %struct.uvd, %struct.uvd* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.uvd*, %struct.uvd** %2, align 8
  %25 = getelementptr inbounds %struct.uvd, %struct.uvd* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.konicawc*
  store %struct.konicawc* %27, %struct.konicawc** %5, align 8
  %28 = load %struct.konicawc*, %struct.konicawc** %5, align 8
  %29 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %52, %19
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @USBVIDEO_NUMSBUF, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load %struct.uvd*, %struct.uvd** %2, align 8
  %36 = getelementptr inbounds %struct.uvd, %struct.uvd* %35, i32 0, i32 5
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usb_kill_urb(i32 %42)
  %44 = load %struct.konicawc*, %struct.konicawc** %5, align 8
  %45 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_kill_urb(i32 %50)
  br label %52

52:                                               ; preds = %34
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load %struct.uvd*, %struct.uvd** %2, align 8
  %57 = getelementptr inbounds %struct.uvd, %struct.uvd* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %80, label %60

60:                                               ; preds = %55
  %61 = load %struct.uvd*, %struct.uvd** %2, align 8
  %62 = getelementptr inbounds %struct.uvd, %struct.uvd* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.uvd*, %struct.uvd** %2, align 8
  %65 = getelementptr inbounds %struct.uvd, %struct.uvd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.uvd*, %struct.uvd** %2, align 8
  %68 = getelementptr inbounds %struct.uvd, %struct.uvd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usb_set_interface(i32* %63, i32 %66, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %60
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load %struct.uvd*, %struct.uvd** %2, align 8
  %78 = getelementptr inbounds %struct.uvd, %struct.uvd* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %60
  br label %80

80:                                               ; preds = %18, %79, %55
  ret void
}

declare dso_local i32 @konicawc_camera_off(%struct.uvd*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_set_interface(i32*, i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
