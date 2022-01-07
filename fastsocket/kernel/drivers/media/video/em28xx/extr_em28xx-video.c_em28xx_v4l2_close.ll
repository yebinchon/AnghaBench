; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_v4l2_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_em28xx_v4l2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.em28xx_fh* }
%struct.em28xx_fh = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.em28xx_fh* }
%struct.em28xx = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.em28xx* }

@.str = private unnamed_addr constant [10 x i8] c"users=%d\0A\00", align 1
@EM28XX_RESOURCE_VIDEO = common dso_local global i32 0, align 4
@EM28XX_RESOURCE_VBI = common dso_local global i32 0, align 4
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_power = common dso_local global i32 0, align 4
@EM28XX_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"setting alternate 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"cannot change alternate number to 0 (error=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @em28xx_v4l2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_v4l2_close(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.em28xx_fh*, align 8
  %5 = alloca %struct.em28xx*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  store %struct.em28xx_fh* %9, %struct.em28xx_fh** %4, align 8
  %10 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %11 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %10, i32 0, i32 8
  %12 = load %struct.em28xx_fh*, %struct.em28xx_fh** %11, align 8
  %13 = bitcast %struct.em28xx_fh* %12 to %struct.em28xx*
  store %struct.em28xx* %13, %struct.em28xx** %5, align 8
  %14 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %15 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @em28xx_videodbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %19 = load i32, i32* @EM28XX_RESOURCE_VIDEO, align 4
  %20 = call i64 @res_check(%struct.em28xx_fh* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %24 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %23, i32 0, i32 4
  %25 = call i32 @videobuf_stop(i32* %24)
  %26 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %27 = load i32, i32* @EM28XX_RESOURCE_VIDEO, align 4
  %28 = call i32 @res_free(%struct.em28xx_fh* %26, i32 %27)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %31 = load i32, i32* @EM28XX_RESOURCE_VBI, align 4
  %32 = call i64 @res_check(%struct.em28xx_fh* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %36 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %35, i32 0, i32 3
  %37 = call i32 @videobuf_stop(i32* %36)
  %38 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %39 = load i32, i32* @EM28XX_RESOURCE_VBI, align 4
  %40 = call i32 @res_free(%struct.em28xx_fh* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %86

46:                                               ; preds = %41
  %47 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %48 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DEV_DISCONNECTED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %55 = bitcast %struct.em28xx* %54 to %struct.em28xx_fh*
  %56 = call i32 @em28xx_release_resources(%struct.em28xx_fh* %55)
  %57 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %58 = bitcast %struct.em28xx* %57 to %struct.em28xx_fh*
  %59 = call i32 @kfree(%struct.em28xx_fh* %58)
  store i32 0, i32* %2, align 4
  br label %102

60:                                               ; preds = %46
  %61 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %62 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %61, i32 0, i32 7
  %63 = load i32, i32* @core, align 4
  %64 = load i32, i32* @s_power, align 4
  %65 = call i32 @v4l2_device_call_all(i32* %62, i32 0, i32 %63, i32 %64, i32 0)
  %66 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %67 = bitcast %struct.em28xx* %66 to %struct.em28xx_fh*
  %68 = call i32 @em28xx_uninit_isoc(%struct.em28xx_fh* %67)
  %69 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %70 = bitcast %struct.em28xx* %69 to %struct.em28xx_fh*
  %71 = load i32, i32* @EM28XX_SUSPEND, align 4
  %72 = call i32 @em28xx_set_mode(%struct.em28xx_fh* %70, i32 %71)
  %73 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %74 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = call i32 (i8*, ...) @em28xx_videodbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %77 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usb_set_interface(i32 %78, i32 0, i32 0)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %60
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @em28xx_errdev(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %60
  br label %86

86:                                               ; preds = %85, %41
  %87 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %88 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %87, i32 0, i32 4
  %89 = call i32 @videobuf_mmap_free(i32* %88)
  %90 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %91 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %90, i32 0, i32 3
  %92 = call i32 @videobuf_mmap_free(i32* %91)
  %93 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %94 = call i32 @kfree(%struct.em28xx_fh* %93)
  %95 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %96 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %100 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %99, i32 0, i32 2
  %101 = call i32 @wake_up_interruptible_nr(i32* %100, i32 1)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %86, %53
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @em28xx_videodbg(i8*, ...) #1

declare dso_local i64 @res_check(%struct.em28xx_fh*, i32) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @res_free(%struct.em28xx_fh*, i32) #1

declare dso_local i32 @em28xx_release_resources(%struct.em28xx_fh*) #1

declare dso_local i32 @kfree(%struct.em28xx_fh*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @em28xx_uninit_isoc(%struct.em28xx_fh*) #1

declare dso_local i32 @em28xx_set_mode(%struct.em28xx_fh*, i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @em28xx_errdev(i8*, i32) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @wake_up_interruptible_nr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
