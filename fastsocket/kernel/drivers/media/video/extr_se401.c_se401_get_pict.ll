; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_get_pict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_get_pict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i32, i32, i64, i32 }
%struct.video_picture = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_se401*, %struct.video_picture*)* @se401_get_pict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se401_get_pict(%struct.usb_se401* %0, %struct.video_picture* %1) #0 {
  %3 = alloca %struct.usb_se401*, align 8
  %4 = alloca %struct.video_picture*, align 8
  store %struct.usb_se401* %0, %struct.usb_se401** %3, align 8
  store %struct.video_picture* %1, %struct.video_picture** %4, align 8
  %5 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %6 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.video_picture*, %struct.video_picture** %4, align 8
  %9 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %11 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.video_picture*, %struct.video_picture** %4, align 8
  %16 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %15, i32 0, i32 0
  store i32 32768, i32* %16, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.video_picture*, %struct.video_picture** %4, align 8
  %19 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load %struct.video_picture*, %struct.video_picture** %4, align 8
  %22 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %21, i32 0, i32 1
  store i32 65535, i32* %22, align 4
  %23 = load %struct.video_picture*, %struct.video_picture** %4, align 8
  %24 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %23, i32 0, i32 2
  store i32 65535, i32* %24, align 4
  %25 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %26 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 10
  %29 = load %struct.video_picture*, %struct.video_picture** %4, align 8
  %30 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.usb_se401*, %struct.usb_se401** %3, align 8
  %32 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.video_picture*, %struct.video_picture** %4, align 8
  %35 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.video_picture*, %struct.video_picture** %4, align 8
  %37 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %36, i32 0, i32 4
  store i32 3, i32* %37, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
