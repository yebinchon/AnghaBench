; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_video_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_pd_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.front_face* }
%struct.front_face = type { i32, i32, i32*, %struct.poseidon*, i32, i8* }
%struct.poseidon = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, %struct.front_face* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.video_device = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i64 0, align 8
@POSEIDON_STATE_ANALOG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@usb_transfer_mode = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i8* null, align 8
@debug_mode = common dso_local global i32 0, align 4
@pd_video_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@VFL_TYPE_VBI = common dso_local global i64 0, align 8
@POSEIDON_STATE_VBI = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i8* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"other \00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pd_video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pd_video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.poseidon*, align 8
  %6 = alloca %struct.front_face*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.video_device* @video_devdata(%struct.file* %8)
  store %struct.video_device* %9, %struct.video_device** %4, align 8
  %10 = load %struct.video_device*, %struct.video_device** %4, align 8
  %11 = call %struct.poseidon* @video_get_drvdata(%struct.video_device* %10)
  store %struct.poseidon* %11, %struct.poseidon** %5, align 8
  store %struct.front_face* null, %struct.front_face** %6, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %15 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %18 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @usb_autopm_get_interface(i32 %19)
  %21 = load %struct.video_device*, %struct.video_device** %4, align 8
  %22 = getelementptr inbounds %struct.video_device, %struct.video_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VFL_TYPE_GRABBER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %1
  %27 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %28 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @POSEIDON_STATE_ANALOG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %79, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.front_face* @kzalloc(i32 40, i32 %34)
  store %struct.front_face* %35, %struct.front_face** %6, align 8
  %36 = load %struct.front_face*, %struct.front_face** %6, align 8
  %37 = icmp ne %struct.front_face* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %150

39:                                               ; preds = %33
  %40 = load i32, i32* @usb_transfer_mode, align 4
  %41 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %42 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %44 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @init_video_context(i32* %45)
  %47 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %48 = call i32 @pd_video_checkmode(%struct.poseidon* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load %struct.front_face*, %struct.front_face** %6, align 8
  %53 = call i32 @kfree(%struct.front_face* %52)
  store i32 -1, i32* %7, align 4
  br label %150

54:                                               ; preds = %39
  %55 = load i32, i32* @POSEIDON_STATE_ANALOG, align 4
  %56 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %57 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %61 = load %struct.front_face*, %struct.front_face** %6, align 8
  %62 = getelementptr inbounds %struct.front_face, %struct.front_face* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %64 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.video_device*, %struct.video_device** %4, align 8
  %69 = load i32, i32* @debug_mode, align 4
  %70 = call i32 @set_debug_mode(%struct.video_device* %68, i32 %69)
  %71 = load %struct.front_face*, %struct.front_face** %6, align 8
  %72 = getelementptr inbounds %struct.front_face, %struct.front_face* %71, i32 0, i32 4
  %73 = load %struct.front_face*, %struct.front_face** %6, align 8
  %74 = getelementptr inbounds %struct.front_face, %struct.front_face* %73, i32 0, i32 0
  %75 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %76 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %77 = load %struct.front_face*, %struct.front_face** %6, align 8
  %78 = call i32 @videobuf_queue_vmalloc_init(i32* %72, i32* @pd_video_qops, i32* null, i32* %74, i8* %75, i32 %76, i32 4, %struct.front_face* %77, i32* null)
  br label %129

79:                                               ; preds = %26, %1
  %80 = load %struct.video_device*, %struct.video_device** %4, align 8
  %81 = getelementptr inbounds %struct.video_device, %struct.video_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VFL_TYPE_VBI, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %124

85:                                               ; preds = %79
  %86 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %87 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @POSEIDON_STATE_VBI, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %124, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.front_face* @kzalloc(i32 40, i32 %93)
  store %struct.front_face* %94, %struct.front_face** %6, align 8
  %95 = load %struct.front_face*, %struct.front_face** %6, align 8
  %96 = icmp ne %struct.front_face* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %150

98:                                               ; preds = %92
  %99 = load i32, i32* @POSEIDON_STATE_VBI, align 4
  %100 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %101 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load i8*, i8** @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %105 = load %struct.front_face*, %struct.front_face** %6, align 8
  %106 = getelementptr inbounds %struct.front_face, %struct.front_face* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load %struct.front_face*, %struct.front_face** %6, align 8
  %108 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %109 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store %struct.front_face* %107, %struct.front_face** %110, align 8
  %111 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %112 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load %struct.front_face*, %struct.front_face** %6, align 8
  %117 = getelementptr inbounds %struct.front_face, %struct.front_face* %116, i32 0, i32 4
  %118 = load %struct.front_face*, %struct.front_face** %6, align 8
  %119 = getelementptr inbounds %struct.front_face, %struct.front_face* %118, i32 0, i32 0
  %120 = load i8*, i8** @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %121 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %122 = load %struct.front_face*, %struct.front_face** %6, align 8
  %123 = call i32 @videobuf_queue_vmalloc_init(i32* %117, i32* @pd_video_qops, i32* null, i32* %119, i8* %120, i32 %121, i32 4, %struct.front_face* %122, i32* null)
  br label %128

124:                                              ; preds = %85, %79
  %125 = call i32 @log(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %150

128:                                              ; preds = %98
  br label %129

129:                                              ; preds = %128, %54
  %130 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %131 = load %struct.front_face*, %struct.front_face** %6, align 8
  %132 = getelementptr inbounds %struct.front_face, %struct.front_face* %131, i32 0, i32 3
  store %struct.poseidon* %130, %struct.poseidon** %132, align 8
  %133 = load %struct.front_face*, %struct.front_face** %6, align 8
  %134 = getelementptr inbounds %struct.front_face, %struct.front_face* %133, i32 0, i32 2
  store i32* null, i32** %134, align 8
  %135 = load %struct.front_face*, %struct.front_face** %6, align 8
  %136 = getelementptr inbounds %struct.front_face, %struct.front_face* %135, i32 0, i32 1
  %137 = call i32 @INIT_LIST_HEAD(i32* %136)
  %138 = load %struct.front_face*, %struct.front_face** %6, align 8
  %139 = getelementptr inbounds %struct.front_face, %struct.front_face* %138, i32 0, i32 0
  %140 = call i32 @spin_lock_init(i32* %139)
  %141 = load %struct.front_face*, %struct.front_face** %6, align 8
  %142 = load %struct.file*, %struct.file** %3, align 8
  %143 = getelementptr inbounds %struct.file, %struct.file* %142, i32 0, i32 0
  store %struct.front_face* %141, %struct.front_face** %143, align 8
  %144 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %145 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %144, i32 0, i32 3
  %146 = call i32 @kref_get(i32* %145)
  %147 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %148 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %147, i32 0, i32 1
  %149 = call i32 @mutex_unlock(i32* %148)
  store i32 0, i32* %2, align 4
  br label %159

150:                                              ; preds = %124, %97, %51, %38
  %151 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %152 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @usb_autopm_put_interface(i32 %153)
  %155 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %156 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %155, i32 0, i32 1
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %150, %129
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.poseidon* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local %struct.front_face* @kzalloc(i32, i32) #1

declare dso_local i32 @init_video_context(i32*) #1

declare dso_local i32 @pd_video_checkmode(%struct.poseidon*) #1

declare dso_local i32 @kfree(%struct.front_face*) #1

declare dso_local i32 @set_debug_mode(%struct.video_device*, i32) #1

declare dso_local i32 @videobuf_queue_vmalloc_init(i32*, i32*, i32*, i32*, i8*, i32, i32, %struct.front_face*, i32*) #1

declare dso_local i32 @log(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
