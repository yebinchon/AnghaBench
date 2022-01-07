; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_request_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/et61x251/extr_et61x251_core.c_et61x251_request_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et61x251_device = type { i64, %struct.TYPE_12__*, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i64, i32, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.v4l2_pix_format }
%struct.TYPE_7__ = type { %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32 }

@IO_READ = common dso_local global i32 0, align 4
@ET61X251_MAX_FRAMES = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.et61x251_device*, i64, i32)* @et61x251_request_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @et61x251_request_buffers(%struct.et61x251_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.et61x251_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.et61x251_device* %0, %struct.et61x251_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %13 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %7, align 8
  %15 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %16 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %struct.v4l2_rect* %18, %struct.v4l2_rect** %8, align 8
  %19 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %20 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %19, i32 0, i32 2
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
  %58 = load i64, i64* @ET61X251_MAX_FRAMES, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* @ET61X251_MAX_FRAMES, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %65 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %81, %62
  %67 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %68 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %73 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @PAGE_ALIGN(i64 %75)
  %77 = mul nsw i64 %74, %76
  %78 = call i8* @vmalloc_32_user(i64 %77)
  store i8* %78, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %86

81:                                               ; preds = %71
  %82 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %83 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  br label %66

86:                                               ; preds = %80, %66
  store i64 0, i64* %11, align 8
  br label %87

87:                                               ; preds = %172, %86
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %90 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %175

93:                                               ; preds = %87
  %94 = load i8*, i8** %10, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i64 @PAGE_ALIGN(i64 %96)
  %98 = mul nsw i64 %95, %97
  %99 = getelementptr i8, i8* %94, i64 %98
  %100 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %101 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %100, i32 0, i32 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store i8* %99, i8** %105, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %108 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %107, i32 0, i32 1
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 7
  store i64 %106, i64* %113, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i64 @PAGE_ALIGN(i64 %115)
  %117 = mul nsw i64 %114, %116
  %118 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %119 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %118, i32 0, i32 1
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i64 %117, i64* %125, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %128 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  store i64 %126, i64* %133, align 8
  %134 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %135 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %136 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = load i64, i64* %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 5
  store i32 %134, i32* %141, align 8
  %142 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %143 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %142, i32 0, i32 1
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load i64, i64* %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 4
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %150 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %151 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %150, i32 0, i32 1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 3
  store i32 %149, i32* %156, align 4
  %157 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %158 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %159 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %158, i32 0, i32 1
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = load i64, i64* %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  store i32 %157, i32* %164, align 8
  %165 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %166 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %165, i32 0, i32 1
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = load i64, i64* %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %93
  %173 = load i64, i64* %11, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %11, align 8
  br label %87

175:                                              ; preds = %87
  %176 = load %struct.et61x251_device*, %struct.et61x251_device** %4, align 8
  %177 = getelementptr inbounds %struct.et61x251_device, %struct.et61x251_device* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  ret i64 %178
}

declare dso_local i8* @vmalloc_32_user(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
