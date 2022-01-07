; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_request_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_request_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i64, i64, %struct.TYPE_12__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.v4l2_pix_format }
%struct.TYPE_7__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32 }

@IO_READ = common dso_local global i32 0, align 4
@SN9C102_MAX_FRAMES = common dso_local global i64 0, align 8
@BRIDGE_SN9C105 = common dso_local global i64 0, align 8
@BRIDGE_SN9C120 = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sn9c102_device*, i64, i32)* @sn9c102_request_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sn9c102_request_buffers(%struct.sn9c102_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.sn9c102_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %13 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %7, align 8
  %15 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %16 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.v4l2_rect* %18, %struct.v4l2_rect** %8, align 8
  %19 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %20 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @IO_READ, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24, %3
  %29 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = sdiv i32 %39, 8
  br label %54

41:                                               ; preds = %24
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %46 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = sdiv i32 %52, 8
  br label %54

54:                                               ; preds = %41, %28
  %55 = phi i32 [ %40, %28 ], [ %53, %41 ]
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @SN9C102_MAX_FRAMES, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* @SN9C102_MAX_FRAMES, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %64 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BRIDGE_SN9C105, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %70 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BRIDGE_SN9C120, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68, %62
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 591
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i64, i64* %5, align 8
  %79 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %80 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %96, %77
  %82 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %83 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %81
  %87 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %88 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @PAGE_ALIGN(i64 %90)
  %92 = mul nsw i64 %89, %91
  %93 = call i8* @vmalloc_32_user(i64 %92)
  store i8* %93, i8** %10, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %101

96:                                               ; preds = %86
  %97 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %98 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, -1
  store i64 %100, i64* %98, align 8
  br label %81

101:                                              ; preds = %95, %81
  store i64 0, i64* %11, align 8
  br label %102

102:                                              ; preds = %187, %101
  %103 = load i64, i64* %11, align 8
  %104 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %105 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %190

108:                                              ; preds = %102
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i64 @PAGE_ALIGN(i64 %111)
  %113 = mul nsw i64 %110, %112
  %114 = getelementptr i8, i8* %109, i64 %113
  %115 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %116 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %115, i32 0, i32 2
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  store i8* %114, i8** %120, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %123 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %122, i32 0, i32 2
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = load i64, i64* %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 7
  store i64 %121, i64* %128, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @PAGE_ALIGN(i64 %130)
  %132 = mul nsw i64 %129, %131
  %133 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %134 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i64, i64* %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  store i64 %132, i64* %140, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %143 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %142, i32 0, i32 2
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  store i64 %141, i64* %148, align 8
  %149 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %150 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %151 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %150, i32 0, i32 2
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 5
  store i32 %149, i32* %156, align 8
  %157 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %158 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %157, i32 0, i32 2
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  store i64 0, i64* %163, align 8
  %164 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %165 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %166 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %165, i32 0, i32 2
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = load i64, i64* %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  store i32 %164, i32* %171, align 4
  %172 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %173 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %174 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %173, i32 0, i32 2
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = load i64, i64* %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  store i32 %172, i32* %179, align 8
  %180 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %181 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %180, i32 0, i32 2
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = load i64, i64* %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %108
  %188 = load i64, i64* %11, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %11, align 8
  br label %102

190:                                              ; preds = %102
  %191 = load %struct.sn9c102_device*, %struct.sn9c102_device** %4, align 8
  %192 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  ret i64 %193
}

declare dso_local i8* @vmalloc_32_user(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
