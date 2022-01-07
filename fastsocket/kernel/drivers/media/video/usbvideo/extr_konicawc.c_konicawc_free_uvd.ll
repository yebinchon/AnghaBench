; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_free_uvd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_konicawc.c_konicawc_free_uvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i64 }
%struct.konicawc = type { i32** }

@USBVIDEO_NUMSBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*)* @konicawc_free_uvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @konicawc_free_uvd(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.konicawc*, align 8
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  %5 = load %struct.uvd*, %struct.uvd** %2, align 8
  %6 = getelementptr inbounds %struct.uvd, %struct.uvd* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.konicawc*
  store %struct.konicawc* %8, %struct.konicawc** %4, align 8
  %9 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %10 = call i32 @konicawc_unregister_input(%struct.konicawc* %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @USBVIDEO_NUMSBUF, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %17 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @usb_free_urb(i32* %22)
  %24 = load %struct.konicawc*, %struct.konicawc** %4, align 8
  %25 = getelementptr inbounds %struct.konicawc, %struct.konicawc* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %11

33:                                               ; preds = %11
  ret void
}

declare dso_local i32 @konicawc_unregister_input(%struct.konicawc*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
