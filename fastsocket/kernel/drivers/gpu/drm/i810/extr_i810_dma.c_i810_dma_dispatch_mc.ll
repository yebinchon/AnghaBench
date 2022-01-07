; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_dispatch_mc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i810/extr_i810_dma.c_i810_dma_dispatch_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_buf = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i64, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@I810_BUF_CLIENT = common dso_local global i32 0, align 4
@I810_BUF_HARDWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"MC found buffer that isn't mine!\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"addr 0x%lx, used 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"dispatch counter : %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"start : %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"used : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"start + used - 4 : %ld\0A\00", align 1
@I810_BUF_MAPPED = common dso_local global i64 0, align 8
@CMD_OP_BATCH_BUFFER = common dso_local global i32 0, align 4
@BB1_PROTECTED = common dso_local global i64 0, align 8
@CMD_STORE_DWORD_IDX = common dso_local global i32 0, align 4
@I810_BUF_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.drm_buf*, i32, i32)* @i810_dma_dispatch_mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_dma_dispatch_mc(%struct.drm_device* %0, %struct.drm_buf* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_buf* %1, %struct.drm_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %9, align 8
  %18 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %19 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %10, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %11, align 8
  %24 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %25 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub i64 %27, %32
  store i64 %33, i64* %13, align 8
  %34 = load i32, i32* @RING_LOCALS, align 4
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = call i32 @i810_kernel_lost_context(%struct.drm_device* %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @I810_BUF_CLIENT, align 4
  %41 = load i32, i32* @I810_BUF_HARDWARE, align 4
  %42 = call i32 @cmpxchg(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @I810_BUF_CLIENT, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %4
  %47 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %4
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 4096
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 127, i32* %54, align 4
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %55, i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  %66 = load i64, i64* %13, align 8
  %67 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load i64, i64* %13, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %70, %72
  %74 = sub i64 %73, 4
  %75 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @I810_BUF_MAPPED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %52
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = bitcast i8* %92 to i64*
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %85, %81
  %97 = load %struct.drm_buf*, %struct.drm_buf** %6, align 8
  %98 = call i32 @i810_unmap_buffer(%struct.drm_buf* %97)
  br label %99

99:                                               ; preds = %96, %52
  %100 = call i32 @BEGIN_LP_RING(i32 4)
  %101 = load i32, i32* @CMD_OP_BATCH_BUFFER, align 4
  %102 = call i32 @OUT_RING(i32 %101)
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @BB1_PROTECTED, align 8
  %105 = or i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @OUT_RING(i32 %106)
  %108 = load i64, i64* %13, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %108, %110
  %112 = sub i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i32 @OUT_RING(i32 %113)
  %115 = call i32 @OUT_RING(i32 0)
  %116 = call i32 (...) @ADVANCE_LP_RING()
  %117 = call i32 @BEGIN_LP_RING(i32 8)
  %118 = load i32, i32* @CMD_STORE_DWORD_IDX, align 4
  %119 = call i32 @OUT_RING(i32 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @OUT_RING(i32 %122)
  %124 = load i32, i32* @I810_BUF_FREE, align 4
  %125 = call i32 @OUT_RING(i32 %124)
  %126 = call i32 @OUT_RING(i32 0)
  %127 = load i32, i32* @CMD_STORE_DWORD_IDX, align 4
  %128 = call i32 @OUT_RING(i32 %127)
  %129 = call i32 @OUT_RING(i32 16)
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @OUT_RING(i32 %130)
  %132 = call i32 @OUT_RING(i32 0)
  %133 = call i32 (...) @ADVANCE_LP_RING()
  ret void
}

declare dso_local i32 @i810_kernel_lost_context(%struct.drm_device*) #1

declare dso_local i32 @cmpxchg(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @i810_unmap_buffer(%struct.drm_buf*) #1

declare dso_local i32 @BEGIN_LP_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_LP_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
