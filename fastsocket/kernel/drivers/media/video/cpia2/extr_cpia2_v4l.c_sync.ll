; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, i32, i32, %struct.framebuf* }
%struct.framebuf = type { i64, i64 }

@FRAME_READY = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*, i32)* @sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync(%struct.camera_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.camera_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.framebuf*, align 8
  store %struct.camera_data* %0, %struct.camera_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %8 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %7, i32 0, i32 4
  %9 = load %struct.framebuf*, %struct.framebuf** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %9, i64 %11
  store %struct.framebuf* %12, %struct.framebuf** %6, align 8
  br label %13

13:                                               ; preds = %2, %69
  %14 = load %struct.framebuf*, %struct.framebuf** %6, align 8
  %15 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FRAME_READY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %70

20:                                               ; preds = %13
  %21 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %22 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* @FRAME_READY, align 8
  %27 = load %struct.framebuf*, %struct.framebuf** %6, align 8
  %28 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.framebuf*, %struct.framebuf** %6, align 8
  %30 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  store i32 0, i32* %3, align 4
  br label %70

31:                                               ; preds = %20
  %32 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %33 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %36 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %39 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.framebuf*, %struct.framebuf** %6, align 8
  %44 = getelementptr inbounds %struct.framebuf, %struct.framebuf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FRAME_READY, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %42, %31
  %49 = phi i1 [ true, %31 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @wait_event_interruptible(i32 %37, i32 %50)
  %52 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %53 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load i32, i32* @current, align 4
  %56 = call i64 @signal_pending(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @ERESTARTSYS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %70

61:                                               ; preds = %48
  %62 = load %struct.camera_data*, %struct.camera_data** %4, align 8
  %63 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOTTY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %61
  br label %13

70:                                               ; preds = %66, %58, %25, %19
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
