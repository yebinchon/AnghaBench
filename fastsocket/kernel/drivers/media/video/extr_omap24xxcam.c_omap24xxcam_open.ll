; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.omap24xxcam_device* }
%struct.omap24xxcam_device = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.file = type { %struct.omap24xxcam_fh* }
%struct.omap24xxcam_fh = type { i32, i32, i32, %struct.omap24xxcam_device* }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@omap24xxcam = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@omap24xxcam_vbq_ops = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @omap24xxcam_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap24xxcam_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap24xxcam_device*, align 8
  %6 = alloca %struct.omap24xxcam_fh*, align 8
  %7 = alloca %struct.v4l2_format, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.TYPE_9__* @video_devdata(%struct.file* %8)
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @omap24xxcam, i32 0, i32 0), align 8
  store %struct.omap24xxcam_device* %12, %struct.omap24xxcam_device** %5, align 8
  %13 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %14 = icmp ne %struct.omap24xxcam_device* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %17 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %22 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20, %15, %1
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %125

31:                                               ; preds = %20
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.omap24xxcam_fh* @kzalloc(i32 24, i32 %32)
  store %struct.omap24xxcam_fh* %33, %struct.omap24xxcam_fh** %6, align 8
  %34 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %35 = icmp eq %struct.omap24xxcam_fh* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %125

39:                                               ; preds = %31
  %40 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %41 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %44 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = icmp eq %struct.TYPE_8__* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %49 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @try_module_get(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %47, %39
  %56 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %57 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  br label %120

59:                                               ; preds = %47
  %60 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %61 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %60, i32 0, i32 2
  %62 = call i32 @atomic_inc_return(i32* %61)
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %66 = call i32 @omap24xxcam_hwinit(%struct.omap24xxcam_device* %65)
  %67 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %68 = call i64 @omap24xxcam_sensor_enable(%struct.omap24xxcam_device* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %72 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  br label %111

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %59
  %76 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %77 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %76, i32 0, i32 1
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %80 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %81 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %80, i32 0, i32 3
  store %struct.omap24xxcam_device* %79, %struct.omap24xxcam_device** %81, align 8
  %82 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %83 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %82, i32 0, i32 1
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %86 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = call i32 @vidioc_int_g_fmt_cap(%struct.TYPE_8__* %87, %struct.v4l2_format* %7)
  %89 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %90 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %7, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %96 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %98 = load %struct.file*, %struct.file** %3, align 8
  %99 = getelementptr inbounds %struct.file, %struct.file* %98, i32 0, i32 0
  store %struct.omap24xxcam_fh* %97, %struct.omap24xxcam_fh** %99, align 8
  %100 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %101 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %100, i32 0, i32 0
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %104 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %103, i32 0, i32 1
  %105 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %106 = getelementptr inbounds %struct.omap24xxcam_fh, %struct.omap24xxcam_fh* %105, i32 0, i32 0
  %107 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %108 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %109 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %110 = call i32 @videobuf_queue_sg_init(i32* %104, i32* @omap24xxcam_vbq_ops, i32* null, i32* %106, i32 %107, i32 %108, i32 4, %struct.omap24xxcam_fh* %109)
  store i32 0, i32* %2, align 4
  br label %125

111:                                              ; preds = %70
  %112 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %113 = call i32 @omap24xxcam_poweron_reset(%struct.omap24xxcam_device* %112)
  %114 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %5, align 8
  %115 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @module_put(i32 %118)
  br label %120

120:                                              ; preds = %111, %55
  %121 = load %struct.omap24xxcam_fh*, %struct.omap24xxcam_fh** %6, align 8
  %122 = call i32 @kfree(%struct.omap24xxcam_fh* %121)
  %123 = load i32, i32* @ENODEV, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %120, %75, %36, %28
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_9__* @video_devdata(%struct.file*) #1

declare dso_local %struct.omap24xxcam_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @omap24xxcam_hwinit(%struct.omap24xxcam_device*) #1

declare dso_local i64 @omap24xxcam_sensor_enable(%struct.omap24xxcam_device*) #1

declare dso_local i32 @vidioc_int_g_fmt_cap(%struct.TYPE_8__*, %struct.v4l2_format*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @videobuf_queue_sg_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.omap24xxcam_fh*) #1

declare dso_local i32 @omap24xxcam_poweron_reset(%struct.omap24xxcam_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.omap24xxcam_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
