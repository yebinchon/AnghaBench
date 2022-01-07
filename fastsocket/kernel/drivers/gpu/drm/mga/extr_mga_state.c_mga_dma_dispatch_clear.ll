; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/mga/extr_mga_state.c_mga_dma_dispatch_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.drm_clip_rect*, %struct.TYPE_8__ }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@DMA_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MGA_DMAPAD = common dso_local global i64 0, align 8
@MGA_DWGSYNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"   from=%d,%d to=%d,%d\0A\00", align 1
@MGA_FRONT = common dso_local global i32 0, align 4
@MGA_PLNWT = common dso_local global i64 0, align 8
@MGA_YDSTLEN = common dso_local global i64 0, align 8
@MGA_FXBNDRY = common dso_local global i64 0, align 8
@MGA_FCOL = common dso_local global i64 0, align 8
@MGA_DSTORG = common dso_local global i64 0, align 8
@MGA_DWGCTL = common dso_local global i64 0, align 8
@MGA_EXEC = common dso_local global i64 0, align 8
@MGA_BACK = common dso_local global i32 0, align 4
@MGA_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.TYPE_9__*)* @mga_dma_dispatch_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mga_dma_dispatch_clear(%struct.drm_device* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.drm_clip_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_clip_rect*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %6, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %7, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %22, align 8
  store %struct.drm_clip_rect* %23, %struct.drm_clip_rect** %8, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @DMA_LOCALS, align 4
  %28 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 @BEGIN_DMA(i32 1)
  %30 = load i64, i64* @MGA_DMAPAD, align 8
  %31 = load i64, i64* @MGA_DMAPAD, align 8
  %32 = load i64, i64* @MGA_DWGSYNC, align 8
  %33 = load i64, i64* @MGA_DWGSYNC, align 8
  %34 = call i32 @DMA_BLOCK(i64 %30, i32 0, i64 %31, i32 0, i64 %32, i32 28928, i64 %33, i32 28672)
  %35 = call i32 (...) @ADVANCE_DMA()
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %209, %2
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %212

40:                                               ; preds = %36
  %41 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %41, i64 %43
  store %struct.drm_clip_rect* %44, %struct.drm_clip_rect** %11, align 8
  %45 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %46 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %49 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %53 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %56 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %59 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %62 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57, i32 %60, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MGA_FRONT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %112

71:                                               ; preds = %40
  %72 = call i32 @BEGIN_DMA(i32 2)
  %73 = load i64, i64* @MGA_DMAPAD, align 8
  %74 = load i64, i64* @MGA_PLNWT, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @MGA_YDSTLEN, align 8
  %79 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %80 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 16
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %82, %83
  %85 = load i64, i64* @MGA_FXBNDRY, align 8
  %86 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %87 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %91 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %89, %92
  %94 = call i32 @DMA_BLOCK(i64 %73, i32 0, i64 %74, i32 %77, i64 %78, i32 %84, i64 %85, i32 %93)
  %95 = load i64, i64* @MGA_DMAPAD, align 8
  %96 = load i64, i64* @MGA_FCOL, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* @MGA_DSTORG, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* @MGA_DWGCTL, align 8
  %105 = load i64, i64* @MGA_EXEC, align 8
  %106 = add nsw i64 %104, %105
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @DMA_BLOCK(i64 %95, i32 0, i64 %96, i32 %99, i64 %100, i32 %103, i64 %106, i32 %109)
  %111 = call i32 (...) @ADVANCE_DMA()
  br label %112

112:                                              ; preds = %71, %40
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MGA_BACK, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %160

119:                                              ; preds = %112
  %120 = call i32 @BEGIN_DMA(i32 2)
  %121 = load i64, i64* @MGA_DMAPAD, align 8
  %122 = load i64, i64* @MGA_PLNWT, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* @MGA_YDSTLEN, align 8
  %127 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %128 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 16
  %131 = load i32, i32* %12, align 4
  %132 = or i32 %130, %131
  %133 = load i64, i64* @MGA_FXBNDRY, align 8
  %134 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %135 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 16
  %138 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %139 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %137, %140
  %142 = call i32 @DMA_BLOCK(i64 %121, i32 0, i64 %122, i32 %125, i64 %126, i32 %132, i64 %133, i32 %141)
  %143 = load i64, i64* @MGA_DMAPAD, align 8
  %144 = load i64, i64* @MGA_FCOL, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i64, i64* @MGA_DSTORG, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i64, i64* @MGA_DWGCTL, align 8
  %153 = load i64, i64* @MGA_EXEC, align 8
  %154 = add nsw i64 %152, %153
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @DMA_BLOCK(i64 %143, i32 0, i64 %144, i32 %147, i64 %148, i32 %151, i64 %154, i32 %157)
  %159 = call i32 (...) @ADVANCE_DMA()
  br label %160

160:                                              ; preds = %119, %112
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @MGA_DEPTH, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %208

167:                                              ; preds = %160
  %168 = call i32 @BEGIN_DMA(i32 2)
  %169 = load i64, i64* @MGA_DMAPAD, align 8
  %170 = load i64, i64* @MGA_PLNWT, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load i64, i64* @MGA_YDSTLEN, align 8
  %175 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %176 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = shl i32 %177, 16
  %179 = load i32, i32* %12, align 4
  %180 = or i32 %178, %179
  %181 = load i64, i64* @MGA_FXBNDRY, align 8
  %182 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %183 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = shl i32 %184, 16
  %186 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %11, align 8
  %187 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %185, %188
  %190 = call i32 @DMA_BLOCK(i64 %169, i32 0, i64 %170, i32 %173, i64 %174, i32 %180, i64 %181, i32 %189)
  %191 = load i64, i64* @MGA_DMAPAD, align 8
  %192 = load i64, i64* @MGA_FCOL, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load i64, i64* @MGA_DSTORG, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load i64, i64* @MGA_DWGCTL, align 8
  %201 = load i64, i64* @MGA_EXEC, align 8
  %202 = add nsw i64 %200, %201
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @DMA_BLOCK(i64 %191, i32 0, i64 %192, i32 %195, i64 %196, i32 %199, i64 %202, i32 %205)
  %207 = call i32 (...) @ADVANCE_DMA()
  br label %208

208:                                              ; preds = %167, %160
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %36

212:                                              ; preds = %36
  %213 = call i32 @BEGIN_DMA(i32 1)
  %214 = load i64, i64* @MGA_DMAPAD, align 8
  %215 = load i64, i64* @MGA_DMAPAD, align 8
  %216 = load i64, i64* @MGA_PLNWT, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i64, i64* @MGA_DWGCTL, align 8
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @DMA_BLOCK(i64 %214, i32 0, i64 %215, i32 0, i64 %216, i32 %219, i64 %220, i32 %223)
  %225 = call i32 (...) @ADVANCE_DMA()
  %226 = call i32 (...) @FLUSH_DMA()
  ret void
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @BEGIN_DMA(i32) #1

declare dso_local i32 @DMA_BLOCK(i64, i32, i64, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ADVANCE_DMA(...) #1

declare dso_local i32 @FLUSH_DMA(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
