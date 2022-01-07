; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_set_pict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv680_set_pict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stv = type { i64, i32, i64, i32, i32, i32, i32, i32 }
%struct.video_picture = type { i64, i64, i32, i32, i32, i32, i32 }

@STV_VIDEO_PALETTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"STV(e): Palette set error in _set_pic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stv*, %struct.video_picture*)* @stv680_set_pict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv680_set_pict(%struct.usb_stv* %0, %struct.video_picture* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_stv*, align 8
  %5 = alloca %struct.video_picture*, align 8
  store %struct.usb_stv* %0, %struct.usb_stv** %4, align 8
  store %struct.video_picture* %1, %struct.video_picture** %5, align 8
  %6 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %7 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STV_VIDEO_PALETTE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @PDEBUG(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %15 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %18 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %23 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %22, i32 0, i32 1
  store i32 1, i32* %23, align 8
  %24 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %25 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %28 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %21, %13
  %30 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %31 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %34 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %36 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %39 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %41 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %44 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %46 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %49 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %51 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %54 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %56 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %59 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %29, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
