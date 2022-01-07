; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_OverlayString.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_usbvideo.c_usbvideo_OverlayString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }
%struct.usbvideo_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvd*, %struct.usbvideo_frame*, i32, i32, i8*)* @usbvideo_OverlayString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbvideo_OverlayString(%struct.uvd* %0, %struct.usbvideo_frame* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.uvd*, align 8
  %7 = alloca %struct.usbvideo_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.uvd* %0, %struct.uvd** %6, align 8
  store %struct.usbvideo_frame* %1, %struct.usbvideo_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  br label %11

11:                                               ; preds = %15, %5
  %12 = load i8*, i8** %10, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load %struct.uvd*, %struct.uvd** %6, align 8
  %17 = load %struct.usbvideo_frame*, %struct.usbvideo_frame** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @usbvideo_OverlayChar(%struct.uvd* %16, %struct.usbvideo_frame* %17, i32 %18, i32 %19, i8 signext %21)
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 4
  store i32 %26, i32* %8, align 4
  br label %11

27:                                               ; preds = %11
  ret void
}

declare dso_local i32 @usbvideo_OverlayChar(%struct.uvd*, %struct.usbvideo_frame*, i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
