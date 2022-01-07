; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_read_span.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_read_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@R128_CNTL_BITBLT_MULTI = common dso_local global i32 0, align 4
@R128_GMC_SRC_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@R128_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@R128_ROP3_S = common dso_local global i32 0, align 4
@R128_DP_SRC_SOURCE_MEMORY = common dso_local global i32 0, align 4
@R128_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@R128_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.TYPE_5__*)* @r128_cce_dispatch_read_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_dispatch_read_span(%struct.drm_device* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load i32, i32* @RING_LOCALS, align 4
  %14 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 4096
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @EMSGSIZE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %89

26:                                               ; preds = %20
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @DRM_COPY_FROM_USER(i32* %8, i32 %29, i32 4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %26
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @DRM_COPY_FROM_USER(i32* %9, i32 %38, i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %89

44:                                               ; preds = %35
  %45 = call i32 @BEGIN_RING(i32 7)
  %46 = load i32, i32* @R128_CNTL_BITBLT_MULTI, align 4
  %47 = call i32 @CCE_PACKET3(i32 %46, i32 5)
  %48 = call i32 @OUT_RING(i32 %47)
  %49 = load i32, i32* @R128_GMC_SRC_PITCH_OFFSET_CNTL, align 4
  %50 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @R128_GMC_BRUSH_NONE, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = or i32 %53, %57
  %59 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @R128_ROP3_S, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @R128_DP_SRC_SOURCE_MEMORY, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @OUT_RING(i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @OUT_RING(i32 %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @OUT_RING(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = shl i32 %78, 16
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @OUT_RING(i32 %81)
  %83 = call i32 @OUT_RING(i32 0)
  %84 = load i32, i32* %7, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %85, 1
  %87 = call i32 @OUT_RING(i32 %86)
  %88 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %44, %41, %32, %23
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i64 @DRM_COPY_FROM_USER(i32*, i32, i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
