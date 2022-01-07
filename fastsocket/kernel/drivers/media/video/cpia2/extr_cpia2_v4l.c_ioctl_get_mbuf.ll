; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_get_mbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_get_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32 }
%struct.video_mbuf = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_get_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_get_mbuf(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca %struct.video_mbuf*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.camera_data* %1, %struct.camera_data** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.video_mbuf*
  store %struct.video_mbuf* %8, %struct.video_mbuf** %5, align 8
  %9 = load %struct.video_mbuf*, %struct.video_mbuf** %5, align 8
  %10 = call i32 @memset(%struct.video_mbuf* %9, i32 0, i32 16)
  %11 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %12 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %15 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load %struct.video_mbuf*, %struct.video_mbuf** %5, align 8
  %19 = getelementptr inbounds %struct.video_mbuf, %struct.video_mbuf* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %21 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.video_mbuf*, %struct.video_mbuf** %5, align 8
  %24 = getelementptr inbounds %struct.video_mbuf, %struct.video_mbuf* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %43, %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %28 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %33 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load %struct.video_mbuf*, %struct.video_mbuf** %5, align 8
  %38 = getelementptr inbounds %struct.video_mbuf, %struct.video_mbuf* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %36, i32* %42, align 4
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %25

46:                                               ; preds = %25
  ret i32 0
}

declare dso_local i32 @memset(%struct.video_mbuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
