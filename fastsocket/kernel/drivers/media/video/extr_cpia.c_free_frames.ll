; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_free_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia.c_free_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpia_frame = type { i32 }

@FRAME_NUM = common dso_local global i32 0, align 4
@FRAME_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpia_frame*)* @free_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_frames(%struct.cpia_frame* %0) #0 {
  %2 = alloca %struct.cpia_frame*, align 8
  %3 = alloca i32, align 4
  store %struct.cpia_frame* %0, %struct.cpia_frame** %2, align 8
  %4 = load i32, i32* @FRAME_NUM, align 4
  %5 = zext i32 %4 to i64
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %17, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @FRAME_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i32, i32* @FRAME_UNUSED, align 4
  %12 = load %struct.cpia_frame*, %struct.cpia_frame** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cpia_frame, %struct.cpia_frame* %12, i64 %14
  %16 = getelementptr inbounds %struct.cpia_frame, %struct.cpia_frame* %15, i32 0, i32 0
  store i32 %11, i32* %16, align 4
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %6

20:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
