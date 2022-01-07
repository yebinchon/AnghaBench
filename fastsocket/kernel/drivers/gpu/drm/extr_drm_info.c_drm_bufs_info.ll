; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_info.c_drm_bufs_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_info.c_drm_bufs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_device_dma* }
%struct.drm_device_dma = type { i32, %struct.TYPE_8__**, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i64, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c" o     size count  free\09 segs pages    kB\0A\0A\00", align 1
@DRM_MAX_ORDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%2d %8d %5d %5d %5d %5d %5ld\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_bufs_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_info_node*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.drm_info_node*
  store %struct.drm_info_node* %14, %struct.drm_info_node** %6, align 8
  %15 = load %struct.drm_info_node*, %struct.drm_info_node** %6, align 8
  %16 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %7, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 1
  %25 = load %struct.drm_device_dma*, %struct.drm_device_dma** %24, align 8
  store %struct.drm_device_dma* %25, %struct.drm_device_dma** %8, align 8
  %26 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %27 = icmp ne %struct.drm_device_dma* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  store i32 0, i32* %3, align 4
  br label %153

32:                                               ; preds = %2
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %110, %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @DRM_MAX_ORDER, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %113

39:                                               ; preds = %35
  %40 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %41 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %109

49:                                               ; preds = %39
  %50 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %51 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %50, i32 0, i32 2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %59 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 1, %65
  %67 = mul nsw i32 %57, %66
  store i32 %67, i32* %10, align 4
  %68 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %71 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %79 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %78, i32 0, i32 2
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %87 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = call i32 @atomic_read(i32* %93)
  %95 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %96 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sdiv i32 %106, 1024
  %108 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %77, i64 %85, i32 %94, i32 %102, i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %49, %39
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %35

113:                                              ; preds = %35
  %114 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %115 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %144, %113
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %119 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %116
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = srem i32 %126, 32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %131 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %125, %122
  %133 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %134 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %135 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %136, i64 %138
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %132
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %116

147:                                              ; preds = %116
  %148 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %149 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %150 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %151 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %150, i32 0, i32 0
  %152 = call i32 @mutex_unlock(i32* %151)
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %147, %28
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
