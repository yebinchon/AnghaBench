; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_video_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx8800_fh* }
%struct.cx8800_fh = type { i32, i32, i32, i32, i32, i32, i32, %struct.cx8800_dev* }
%struct.cx8800_dev = type { i32, %struct.TYPE_4__*, %struct.cx88_core* }
%struct.TYPE_4__ = type { i32 }
%struct.cx88_core = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }
%struct.video_device = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"open dev=%s radio=%d type=%s\0A\00", align 1
@v4l2_type_names = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_BGR24 = common dso_local global i32 0, align 4
@cx8800_video_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@cx8800_vbi_qops = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"video_open: setting radio device\0A\00", align 1
@MO_GP3_IO = common dso_local global i32 0, align 4
@MO_GP0_IO = common dso_local global i32 0, align 4
@MO_GP1_IO = common dso_local global i32 0, align 4
@MO_GP2_IO = common dso_local global i32 0, align 4
@V4L2_IDENT_WM8775 = common dso_local global i64 0, align 8
@audio = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@WW_I2SADC = common dso_local global i32 0, align 4
@WW_FM = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.cx8800_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca %struct.cx8800_fh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %4, align 8
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = call %struct.cx8800_dev* @video_drvdata(%struct.file* %12)
  store %struct.cx8800_dev* %13, %struct.cx8800_dev** %5, align 8
  %14 = load %struct.cx8800_dev*, %struct.cx8800_dev** %5, align 8
  %15 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %14, i32 0, i32 2
  %16 = load %struct.cx88_core*, %struct.cx88_core** %15, align 8
  store %struct.cx88_core* %16, %struct.cx88_core** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.video_device*, %struct.video_device** %4, align 8
  %18 = getelementptr inbounds %struct.video_device, %struct.video_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %25 [
    i32 130, label %20
    i32 128, label %22
    i32 129, label %24
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  store i32 %23, i32* %8, align 4
  br label %25

24:                                               ; preds = %1
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %1, %24, %22, %20
  %26 = load %struct.video_device*, %struct.video_device** %4, align 8
  %27 = call i32 @video_device_node_name(%struct.video_device* %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** @v4l2_type_names, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.cx8800_fh* @kzalloc(i32 40, i32 %35)
  store %struct.cx8800_fh* %36, %struct.cx8800_fh** %7, align 8
  %37 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %38 = icmp ne %struct.cx8800_fh* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %184

46:                                               ; preds = %25
  %47 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %48 = load %struct.file*, %struct.file** %3, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  store %struct.cx8800_fh* %47, %struct.cx8800_fh** %49, align 8
  %50 = load %struct.cx8800_dev*, %struct.cx8800_dev** %5, align 8
  %51 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %52 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %51, i32 0, i32 7
  store %struct.cx8800_dev* %50, %struct.cx8800_dev** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %55 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %58 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %60 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %59, i32 0, i32 2
  store i32 320, i32* %60, align 8
  %61 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %62 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %61, i32 0, i32 3
  store i32 240, i32* %62, align 4
  %63 = load i32, i32* @V4L2_PIX_FMT_BGR24, align 4
  %64 = call i32 @format_by_fourcc(i32 %63)
  %65 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %66 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %68 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %71 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %70, i32 0, i32 5
  %72 = load %struct.cx8800_dev*, %struct.cx8800_dev** %5, align 8
  %73 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.cx8800_dev*, %struct.cx8800_dev** %5, align 8
  %77 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %76, i32 0, i32 0
  %78 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %79 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %80 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %81 = call i32 @videobuf_queue_sg_init(i32* %71, i32* @cx8800_video_qops, i32* %75, i32* %77, i32 %78, i32 %79, i32 4, %struct.cx8800_fh* %80, i32* null)
  %82 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %83 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %82, i32 0, i32 4
  %84 = load %struct.cx8800_dev*, %struct.cx8800_dev** %5, align 8
  %85 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.cx8800_dev*, %struct.cx8800_dev** %5, align 8
  %89 = getelementptr inbounds %struct.cx8800_dev, %struct.cx8800_dev* %88, i32 0, i32 0
  %90 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %91 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %92 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %93 = call i32 @videobuf_queue_sg_init(i32* %83, i32* @cx8800_vbi_qops, i32* %87, i32* %89, i32 %90, i32 %91, i32 4, %struct.cx8800_fh* %92, i32* null)
  %94 = load %struct.cx8800_fh*, %struct.cx8800_fh** %7, align 8
  %95 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %177

98:                                               ; preds = %46
  %99 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @MO_GP3_IO, align 4
  %101 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %102 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @cx_write(i32 %100, i32 %105)
  %107 = load i32, i32* @MO_GP0_IO, align 4
  %108 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %109 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @cx_write(i32 %107, i32 %112)
  %114 = load i32, i32* @MO_GP1_IO, align 4
  %115 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %116 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @cx_write(i32 %114, i32 %119)
  %121 = load i32, i32* @MO_GP2_IO, align 4
  %122 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %123 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @cx_write(i32 %121, i32 %126)
  %128 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %129 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %163

134:                                              ; preds = %98
  %135 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %136 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %134
  %141 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %142 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @V4L2_IDENT_WM8775, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %140
  %148 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %149 = load i32, i32* @audio, align 4
  %150 = load i32, i32* @s_routing, align 4
  %151 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %152 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 (%struct.cx88_core*, i32, i32, ...) @call_all(%struct.cx88_core* %148, i32 %149, i32 %150, i64 %155, i32 0, i32 0)
  br label %157

157:                                              ; preds = %147, %140, %134
  %158 = load i32, i32* @WW_I2SADC, align 4
  %159 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %160 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %162 = call i32 @cx88_set_tvaudio(%struct.cx88_core* %161)
  br label %172

163:                                              ; preds = %98
  %164 = load i32, i32* @WW_FM, align 4
  %165 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %166 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 8
  %167 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %168 = call i32 @cx88_set_tvaudio(%struct.cx88_core* %167)
  %169 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %170 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %171 = call i32 @cx88_set_stereo(%struct.cx88_core* %169, i32 %170, i32 1)
  br label %172

172:                                              ; preds = %163, %157
  %173 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %174 = load i32, i32* @tuner, align 4
  %175 = load i32, i32* @s_radio, align 4
  %176 = call i32 (%struct.cx88_core*, i32, i32, ...) @call_all(%struct.cx88_core* %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %172, %46
  %178 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %179 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %178, i32 0, i32 1
  %180 = call i32 @atomic_inc(i32* %179)
  %181 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %182 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %181, i32 0, i32 0
  %183 = call i32 @mutex_unlock(i32* %182)
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %177, %43
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.cx8800_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

declare dso_local %struct.cx8800_fh* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @format_by_fourcc(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @videobuf_queue_sg_init(i32*, i32*, i32*, i32*, i32, i32, i32, %struct.cx8800_fh*, i32*) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, ...) #1

declare dso_local i32 @cx88_set_tvaudio(%struct.cx88_core*) #1

declare dso_local i32 @cx88_set_stereo(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
