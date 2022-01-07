; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_mm.c_via_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_mm.c_via_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i64 }
%struct.drm_file = type { %struct.via_file_private* }
%struct.via_file_private = type { i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i64 }
%struct.via_memblock = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i32, i32, i32 }

@VIA_MEM_AGP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unknown memory type allocation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VIA_MEM_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"Attempt to allocate from uninitialized memory manager.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VIA_MM_ALIGN_MASK = common dso_local global i64 0, align 8
@VIA_MM_ALIGN_SHIFT = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Video memory allocation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @via_mem_alloc(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.via_memblock*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.via_file_private*, align 8
  %14 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %12, align 8
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %21, i32 0, i32 0
  %23 = load %struct.via_file_private*, %struct.via_file_private** %22, align 8
  store %struct.via_file_private* %23, %struct.via_file_private** %13, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @VIA_MEM_AGP, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %177

33:                                               ; preds = %3
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VIA_MEM_VIDEO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  br label %50

46:                                               ; preds = %33
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i64 [ %45, %42 ], [ %49, %46 ]
  %52 = icmp eq i64 0, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %177

60:                                               ; preds = %50
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.via_memblock* @kzalloc(i32 16, i32 %61)
  store %struct.via_memblock* %62, %struct.via_memblock** %11, align 8
  %63 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %64 = icmp ne %struct.via_memblock* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %9, align 4
  br label %163

68:                                               ; preds = %60
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VIA_MM_ALIGN_MASK, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* @VIA_MM_ALIGN_SHIFT, align 8
  %75 = lshr i64 %73, %74
  store i64 %75, i64* %14, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VIA_MEM_AGP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %68
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  %84 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %85 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %84, i32 0, i32 0
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @drm_mm_insert_node(i32* %83, %struct.TYPE_7__* %85, i64 %86, i32 0)
  store i32 %87, i32* %9, align 4
  br label %95

88:                                               ; preds = %68
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %92 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %91, i32 0, i32 0
  %93 = load i64, i64* %14, align 8
  %94 = call i32 @drm_mm_insert_node(i32* %90, %struct.TYPE_7__* %92, i64 %93, i32 0)
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %163

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %118, %99
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i64 @idr_pre_get(i32* %102, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %9, align 4
  br label %159

109:                                              ; preds = %100
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  %112 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %113 = call i32 @idr_get_new_above(i32* %111, %struct.via_memblock* %112, i32 1, i32* %10)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @EAGAIN, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %100

119:                                              ; preds = %109
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %159

123:                                              ; preds = %119
  %124 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %125 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %124, i32 0, i32 1
  %126 = load %struct.via_file_private*, %struct.via_file_private** %13, align 8
  %127 = getelementptr inbounds %struct.via_file_private, %struct.via_file_private* %126, i32 0, i32 0
  %128 = call i32 @list_add(i32* %125, i32* %127)
  %129 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 0
  %131 = call i32 @mutex_unlock(i32* %130)
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @VIA_MEM_VIDEO, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %123
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  br label %145

141:                                              ; preds = %123
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  br label %145

145:                                              ; preds = %141, %137
  %146 = phi i64 [ %140, %137 ], [ %144, %141 ]
  %147 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %148 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @VIA_MM_ALIGN_SHIFT, align 8
  %152 = shl i64 %150, %151
  %153 = add i64 %146, %152
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  store i32 0, i32* %4, align 4
  br label %177

159:                                              ; preds = %122, %106
  %160 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %161 = getelementptr inbounds %struct.via_memblock, %struct.via_memblock* %160, i32 0, i32 0
  %162 = call i32 @drm_mm_remove_node(%struct.TYPE_7__* %161)
  br label %163

163:                                              ; preds = %159, %98, %65
  %164 = load %struct.via_memblock*, %struct.via_memblock** %11, align 8
  %165 = call i32 @kfree(%struct.via_memblock* %164)
  %166 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %167 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %166, i32 0, i32 0
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 3
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  store i32 0, i32* %174, align 8
  %175 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %176 = load i32, i32* %9, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %163, %145, %53, %29
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.via_memblock* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_mm_insert_node(i32*, %struct.TYPE_7__*, i64, i32) #1

declare dso_local i64 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @idr_get_new_above(i32*, %struct.via_memblock*, i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @drm_mm_remove_node(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.via_memblock*) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
