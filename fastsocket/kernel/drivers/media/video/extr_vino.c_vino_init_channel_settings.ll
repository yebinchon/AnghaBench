; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_init_channel_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_init_channel_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.vino_channel_settings = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__, i32, i32, i64, i32, i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@VINO_INPUT_NONE = common dso_local global i32 0, align 4
@VINO_DATA_FMT_GREY = common dso_local global i32 0, align 4
@VINO_DATA_NORM_NTSC = common dso_local global i32 0, align 4
@vino_init_stage = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vdev_template = common dso_local global i32 0, align 4
@video_device_release = common dso_local global i32 0, align 4
@vino_drvdata = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_channel_settings*, i32, i8*)* @vino_init_channel_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_init_channel_settings(%struct.vino_channel_settings* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vino_channel_settings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %10 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @VINO_INPUT_NONE, align 4
  %12 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %13 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 8
  %14 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %15 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %14, i32 0, i32 10
  store i64 0, i64* %15, align 8
  %16 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %17 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %16, i32 0, i32 9
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @VINO_DATA_FMT_GREY, align 4
  %19 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %20 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %19, i32 0, i32 8
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @VINO_DATA_NORM_NTSC, align 4
  %22 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %23 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %25 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %27 = call i32 @vino_set_default_clipping(%struct.vino_channel_settings* %26)
  %28 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %29 = call i32 @vino_set_default_framerate(%struct.vino_channel_settings* %28)
  %30 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %31 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %30, i32 0, i32 6
  store i64 0, i64* %31, align 8
  %32 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %33 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %32, i32 0, i32 5
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %36 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %35, i32 0, i32 4
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %39 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %43 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %47 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = call %struct.TYPE_8__* (...) @video_device_alloc()
  %51 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %52 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %51, i32 0, i32 2
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %54 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %53, i32 0, i32 2
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = icmp ne %struct.TYPE_8__* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %3
  %58 = load i32, i32* @vino_init_stage, align 4
  %59 = call i32 @vino_module_cleanup(i32 %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %92

62:                                               ; preds = %3
  %63 = load i32, i32* @vino_init_stage, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @vino_init_stage, align 4
  %65 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %66 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 @memcpy(%struct.TYPE_8__* %67, i32* @vdev_template, i32 4)
  %69 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %70 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strcpy(i32 %73, i8* %74)
  %76 = load i32, i32* @video_device_release, align 4
  %77 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %78 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %77, i32 0, i32 2
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vino_drvdata, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %84 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32* %82, i32** %86, align 8
  %87 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %88 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %87, i32 0, i32 2
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %5, align 8
  %91 = call i32 @video_set_drvdata(%struct.TYPE_8__* %89, %struct.vino_channel_settings* %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %62, %57
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @vino_set_default_clipping(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_set_default_framerate(%struct.vino_channel_settings*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.TYPE_8__* @video_device_alloc(...) #1

declare dso_local i32 @vino_module_cleanup(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_8__*, %struct.vino_channel_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
