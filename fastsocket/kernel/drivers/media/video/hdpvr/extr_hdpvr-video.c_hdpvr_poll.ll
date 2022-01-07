; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-video.c_hdpvr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.hdpvr_fh* }
%struct.hdpvr_fh = type { %struct.hdpvr_device* }
%struct.hdpvr_device = type { i64, i32, i32, i32, i32 }
%struct.hdpvr_buffer = type { i64 }

@EIO = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i64 0, align 8
@MSG_BUFFER = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"start_streaming failed\0A\00", align 1
@BUFSTAT_READY = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @hdpvr_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdpvr_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hdpvr_buffer*, align 8
  %7 = alloca %struct.hdpvr_fh*, align 8
  %8 = alloca %struct.hdpvr_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.hdpvr_buffer* null, %struct.hdpvr_buffer** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %11, align 8
  store %struct.hdpvr_fh* %12, %struct.hdpvr_fh** %7, align 8
  %13 = load %struct.hdpvr_fh*, %struct.hdpvr_fh** %7, align 8
  %14 = getelementptr inbounds %struct.hdpvr_fh, %struct.hdpvr_fh* %13, i32 0, i32 0
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %14, align 8
  store %struct.hdpvr_device* %15, %struct.hdpvr_device** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %17 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %20 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @video_is_registered(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %26 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %25, i32 0, i32 2
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %90

30:                                               ; preds = %2
  %31 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %32 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @STATUS_IDLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %38 = call i64 @hdpvr_start_streaming(%struct.hdpvr_device* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* @MSG_BUFFER, align 4
  %42 = load i32, i32* @hdpvr_debug, align 4
  %43 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %44 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %43, i32 0, i32 3
  %45 = call i32 @v4l2_dbg(i32 %41, i32 %42, i32* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %46 = load i64, i64* @STATUS_IDLE, align 8
  %47 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %48 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %40, %36
  %50 = call i32 (...) @print_buffer_status()
  br label %51

51:                                               ; preds = %49, %30
  %52 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %53 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %52, i32 0, i32 2
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %56 = call %struct.hdpvr_buffer* @hdpvr_get_next_buffer(%struct.hdpvr_device* %55)
  store %struct.hdpvr_buffer* %56, %struct.hdpvr_buffer** %6, align 8
  %57 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %6, align 8
  %58 = icmp ne %struct.hdpvr_buffer* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %51
  %60 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BUFSTAT_READY, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59, %51
  %66 = load %struct.file*, %struct.file** %4, align 8
  %67 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %68 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %67, i32 0, i32 1
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @poll_wait(%struct.file* %66, i32* %68, i32* %69)
  %71 = load %struct.hdpvr_device*, %struct.hdpvr_device** %8, align 8
  %72 = call %struct.hdpvr_buffer* @hdpvr_get_next_buffer(%struct.hdpvr_device* %71)
  store %struct.hdpvr_buffer* %72, %struct.hdpvr_buffer** %6, align 8
  br label %73

73:                                               ; preds = %65, %59
  %74 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %6, align 8
  %75 = icmp ne %struct.hdpvr_buffer* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %6, align 8
  %78 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BUFSTAT_READY, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* @POLLIN, align 4
  %84 = load i32, i32* @POLLRDNORM, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %82, %76, %73
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %24
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @video_is_registered(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @hdpvr_start_streaming(%struct.hdpvr_device*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @print_buffer_status(...) #1

declare dso_local %struct.hdpvr_buffer* @hdpvr_get_next_buffer(%struct.hdpvr_device*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
