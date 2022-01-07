; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/sis/extr_sis_mm.c_sis_drm_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/sis/extr_sis_mm.c_sis_drm_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.drm_file = type { %struct.sis_file_private* }
%struct.sis_file_private = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.sis_memblock = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [56 x i8] c"Attempt to allocate from uninitialized memory manager.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIS_MM_ALIGN_MASK = common dso_local global i64 0, align 8
@SIS_MM_ALIGN_SHIFT = common dso_local global i64 0, align 8
@AGP_TYPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"alloc %d, size = %ld, offset = %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, i8*, i32)* @sis_drm_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_drm_alloc(%struct.drm_device* %0, %struct.drm_file* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sis_memblock*, align 8
  %15 = alloca %struct.sis_file_private*, align 8
  %16 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %22, i32 0, i32 0
  %24 = load %struct.sis_file_private*, %struct.sis_file_private** %23, align 8
  store %struct.sis_file_private* %24, %struct.sis_file_private** %15, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  br label %38

34:                                               ; preds = %4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i64 [ %33, %30 ], [ %37, %34 ]
  %40 = icmp eq i64 0, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %185

48:                                               ; preds = %38
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.sis_memblock* @kzalloc(i32 32, i32 %49)
  store %struct.sis_memblock* %50, %struct.sis_memblock** %14, align 8
  %51 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %52 = icmp ne %struct.sis_memblock* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %164

56:                                               ; preds = %48
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SIS_MM_ALIGN_MASK, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* @SIS_MM_ALIGN_SHIFT, align 8
  %63 = lshr i64 %61, %62
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @AGP_TYPE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %56
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 6
  %72 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %73 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @drm_mm_insert_node(i32* %71, %struct.TYPE_9__* %73, i64 %76, i32 0)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %79 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %16, align 8
  br label %95

82:                                               ; preds = %56
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  %85 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %86 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @drm_mm_insert_node(i32* %84, %struct.TYPE_9__* %86, i64 %89, i32 0)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %92 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %16, align 8
  br label %95

95:                                               ; preds = %82, %69
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %164

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %118, %99
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i64 @idr_pre_get(i32* %102, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %12, align 4
  br label %160

109:                                              ; preds = %100
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %113 = call i32 @idr_get_new_above(i32* %111, %struct.sis_memblock* %112, i32 1, i32* %13)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* @EAGAIN, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %100

119:                                              ; preds = %109
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %160

123:                                              ; preds = %119
  %124 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %125 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %124, i32 0, i32 1
  %126 = load %struct.sis_file_private*, %struct.sis_file_private** %15, align 8
  %127 = getelementptr inbounds %struct.sis_file_private, %struct.sis_file_private* %126, i32 0, i32 0
  %128 = call i32 @list_add(i32* %125, i32* %127)
  %129 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %123
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  br label %142

138:                                              ; preds = %123
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  br label %142

142:                                              ; preds = %138, %134
  %143 = phi i64 [ %137, %134 ], [ %141, %138 ]
  %144 = load i64, i64* %16, align 8
  %145 = load i64, i64* @SIS_MM_ALIGN_SHIFT, align 8
  %146 = shl i64 %144, %145
  %147 = add i64 %143, %146
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @SIS_MM_ALIGN_SHIFT, align 8
  %157 = shl i64 %155, %156
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  store i32 0, i32* %5, align 4
  br label %185

160:                                              ; preds = %122, %106
  %161 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %162 = getelementptr inbounds %struct.sis_memblock, %struct.sis_memblock* %161, i32 0, i32 0
  %163 = call i32 @drm_mm_remove_node(%struct.TYPE_9__* %162)
  br label %164

164:                                              ; preds = %160, %98, %53
  %165 = load %struct.sis_memblock*, %struct.sis_memblock** %14, align 8
  %166 = call i32 @kfree(%struct.sis_memblock* %165)
  %167 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %168 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  store i32 0, i32* %175, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %176, i64 %179, i64 %182)
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %5, align 4
  br label %185

185:                                              ; preds = %164, %142, %41
  %186 = load i32, i32* %5, align 4
  ret i32 %186
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sis_memblock* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mm_insert_node(i32*, %struct.TYPE_9__*, i64, i32) #1

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @idr_get_new_above(i32*, %struct.sis_memblock*, i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.sis_memblock*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
