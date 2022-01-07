; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cafe_camera* }
%struct.cafe_camera = type { i64, i64, i32, i32*, %struct.file* }
%struct.v4l2_requestbuffers = type { i64, i64 }

@V4L2_MEMORY_MMAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@S_STREAMING = common dso_local global i64 0, align 8
@S_IDLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@min_buffers = common dso_local global i64 0, align 8
@max_buffers = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @cafe_vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.cafe_camera*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.cafe_camera*, %struct.cafe_camera** %11, align 8
  store %struct.cafe_camera* %12, %struct.cafe_camera** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_MEMORY_MMAP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %161

21:                                               ; preds = %3
  %22 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %23 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %31 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @S_STREAMING, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %37 = call i32 @cafe_ctlr_stop_dma(%struct.cafe_camera* %36)
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %40 = call i32 @cafe_free_sio_buffers(%struct.cafe_camera* %39)
  store i32 %40, i32* %9, align 4
  br label %156

41:                                               ; preds = %21
  %42 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %43 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @S_IDLE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %58, label %47

47:                                               ; preds = %41
  %48 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %49 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %48, i32 0, i32 4
  %50 = load %struct.file*, %struct.file** %49, align 8
  %51 = icmp ne %struct.file* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %54 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %53, i32 0, i32 4
  %55 = load %struct.file*, %struct.file** %54, align 8
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = icmp ne %struct.file* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %41
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %156

61:                                               ; preds = %52, %47
  %62 = load %struct.file*, %struct.file** %5, align 8
  %63 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %64 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %63, i32 0, i32 4
  store %struct.file* %62, %struct.file** %64, align 8
  %65 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @min_buffers, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i64, i64* @min_buffers, align 8
  %72 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %85

74:                                               ; preds = %61
  %75 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @max_buffers, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i64, i64* @max_buffers, align 8
  %82 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %80, %74
  br label %85

85:                                               ; preds = %84, %70
  %86 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %87 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %92 = call i32 @cafe_free_sio_buffers(%struct.cafe_camera* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %156

96:                                               ; preds = %90
  br label %97

97:                                               ; preds = %96, %85
  %98 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32* @kzalloc(i32 %102, i32 %103)
  %105 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %106 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  %107 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %108 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %9, align 4
  br label %156

114:                                              ; preds = %97
  %115 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %116 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %135, %114
  %118 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %119 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %122 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %117
  %126 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %127 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %128 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @cafe_setup_siobuf(%struct.cafe_camera* %126, i64 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %140

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %137 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  br label %117

140:                                              ; preds = %133, %117
  %141 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %142 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %147 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @kfree(i32* %148)
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %152 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %155 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %150, %111, %95, %58, %38
  %157 = load %struct.cafe_camera*, %struct.cafe_camera** %8, align 8
  %158 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %157, i32 0, i32 2
  %159 = call i32 @mutex_unlock(i32* %158)
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %156, %18
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cafe_ctlr_stop_dma(%struct.cafe_camera*) #1

declare dso_local i32 @cafe_free_sio_buffers(%struct.cafe_camera*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @cafe_setup_siobuf(%struct.cafe_camera*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
