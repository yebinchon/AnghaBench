; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_check_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vino_channel_settings = type { i32 }
%struct.vino_framebuffer = type { i32, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"vino_check_buffer():\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@VINO_FRAMEBUFFER_UNUSED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vino_pixel_conversion = common dso_local global i64 0, align 8
@VINO_DATA_FMT_RGB32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"vino_check_buffer(): buffer not ready\0A\00", align 1
@vino_drvdata = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vino_channel_settings*, %struct.vino_framebuffer*)* @vino_check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_check_buffer(%struct.vino_channel_settings* %0, %struct.vino_framebuffer* %1) #0 {
  %3 = alloca %struct.vino_channel_settings*, align 8
  %4 = alloca %struct.vino_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %3, align 8
  store %struct.vino_framebuffer* %1, %struct.vino_framebuffer** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %9 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %8, i32 0, i32 2
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %13 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %24 [
    i32 129, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %20 = call i32 @vino_sync_buffer(%struct.vino_framebuffer* %19)
  %21 = load i32, i32* @VINO_FRAMEBUFFER_UNUSED, align 4
  %22 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %23 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %18, %15
  %28 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %29 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %28, i32 0, i32 2
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* @vino_pixel_conversion, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %39 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VINO_DATA_FMT_RGB32, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %4, align 8
  %45 = call i32 @vino_convert_to_rgba(%struct.vino_framebuffer* %44)
  br label %46

46:                                               ; preds = %43, %37, %34
  br label %70

47:                                               ; preds = %27
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %62 = call i32 @vino_dma_stop(%struct.vino_channel_settings* %61)
  %63 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %3, align 8
  %64 = call i32 @vino_clear_interrupt(%struct.vino_channel_settings* %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vino_drvdata, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %69

69:                                               ; preds = %55, %50, %47
  br label %70

70:                                               ; preds = %69, %46
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @vino_sync_buffer(%struct.vino_framebuffer*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vino_convert_to_rgba(%struct.vino_framebuffer*) #1

declare dso_local i32 @vino_dma_stop(%struct.vino_channel_settings*) #1

declare dso_local i32 @vino_clear_interrupt(%struct.vino_channel_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
