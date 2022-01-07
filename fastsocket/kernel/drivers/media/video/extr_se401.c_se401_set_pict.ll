; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_set_pict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_se401.c_se401_set_pict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_se401 = type { i64, i32, i32, i32, i64, i32 }
%struct.video_picture = type { i64, i32, i64, i32 }

@VIDEO_PALETTE_RGB24 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_se401*, %struct.video_picture*)* @se401_set_pict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se401_set_pict(%struct.usb_se401* %0, %struct.video_picture* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_se401*, align 8
  %5 = alloca %struct.video_picture*, align 8
  store %struct.usb_se401* %0, %struct.usb_se401** %4, align 8
  store %struct.video_picture* %1, %struct.video_picture** %5, align 8
  %6 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %7 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VIDEO_PALETTE_RGB24, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %74

12:                                               ; preds = %2
  %13 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %14 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %17 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %19 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %22 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %12
  %26 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %27 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 10
  %30 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %31 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %33 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 10
  %36 = sub nsw i32 64, %35
  %37 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %38 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %40 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %43 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %25, %12
  %45 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %46 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %49 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %54 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %55 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @se401_set_exposure(%struct.usb_se401* %53, i64 %56)
  br label %58

58:                                               ; preds = %52, %44
  %59 = load %struct.video_picture*, %struct.video_picture** %5, align 8
  %60 = getelementptr inbounds %struct.video_picture, %struct.video_picture* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 32768
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %65 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %64, i32 0, i32 5
  store i32 1, i32* %65, align 8
  br label %69

66:                                               ; preds = %58
  %67 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %68 = getelementptr inbounds %struct.usb_se401, %struct.usb_se401* %67, i32 0, i32 5
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %71 = call i32 @se401_send_pict(%struct.usb_se401* %70)
  %72 = load %struct.usb_se401*, %struct.usb_se401** %4, align 8
  %73 = call i32 @se401_send_pict(%struct.usb_se401* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @se401_set_exposure(%struct.usb_se401*, i64) #1

declare dso_local i32 @se401_send_pict(%struct.usb_se401*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
