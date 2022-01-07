; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_dispatch_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_dispatch_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.drm_clip_rect* }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"swapbuffers\0A\00", align 1
@I810_NR_SAREA_CLIPRECTS = common dso_local global i32 0, align 4
@BR00_BITBLT_CLIENT = common dso_local global i32 0, align 4
@BR00_OP_SRC_COPY_BLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @i810_dma_dispatch_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_dma_dispatch_swap(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_clip_rect*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %4, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %24, align 8
  store %struct.drm_clip_rect* %25, %struct.drm_clip_rect** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  store i32 2, i32* %8, align 4
  %29 = load i32, i32* @RING_LOCALS, align 4
  %30 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %32 = call i32 @i810_kernel_lost_context(%struct.drm_device* %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @I810_NR_SAREA_CLIPRECTS, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @I810_NR_SAREA_CLIPRECTS, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %1
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %160, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %165

43:                                               ; preds = %39
  %44 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %45 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %48 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %46, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %52 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %55 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %53, %56
  store i32 %57, i32* %11, align 4
  %58 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %59 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul i32 %60, %61
  %63 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %64 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %7, align 4
  %67 = mul i32 %65, %66
  %68 = add i32 %62, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %13, align 4
  %70 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %71 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %74 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ugt i32 %72, %75
  br i1 %76, label %101, label %77

77:                                               ; preds = %43
  %78 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %79 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %82 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ugt i32 %80, %83
  br i1 %84, label %101, label %85

85:                                               ; preds = %77
  %86 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %87 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ugt i32 %88, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %85
  %94 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %95 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ugt i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93, %85, %77, %43
  br label %160

102:                                              ; preds = %93
  %103 = call i32 @BEGIN_LP_RING(i32 6)
  %104 = load i32, i32* @BR00_BITBLT_CLIENT, align 4
  %105 = load i32, i32* @BR00_OP_SRC_COPY_BLT, align 4
  %106 = or i32 %104, %105
  %107 = or i32 %106, 4
  %108 = call i32 @OUT_RING(i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, 13369344
  %111 = call i32 @OUT_RING(i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = shl i32 %112, 16
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %8, align 4
  %116 = mul i32 %114, %115
  %117 = or i32 %113, %116
  %118 = call i32 @OUT_RING(i32 %117)
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %102
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = add i32 %126, %127
  %129 = call i32 @OUT_RING(i32 %128)
  br label %137

130:                                              ; preds = %102
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add i32 %133, %134
  %136 = call i32 @OUT_RING(i32 %135)
  br label %137

137:                                              ; preds = %130, %123
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @OUT_RING(i32 %138)
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %137
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add i32 %147, %148
  %150 = call i32 @OUT_RING(i32 %149)
  br label %158

151:                                              ; preds = %137
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %13, align 4
  %156 = add i32 %154, %155
  %157 = call i32 @OUT_RING(i32 %156)
  br label %158

158:                                              ; preds = %151, %144
  %159 = call i32 (...) @ADVANCE_LP_RING()
  br label %160

160:                                              ; preds = %158, %101
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  %163 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %6, align 8
  %164 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %163, i32 1
  store %struct.drm_clip_rect* %164, %struct.drm_clip_rect** %6, align 8
  br label %39

165:                                              ; preds = %39
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @i810_kernel_lost_context(%struct.drm_device*) #1

declare dso_local i32 @BEGIN_LP_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_LP_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
