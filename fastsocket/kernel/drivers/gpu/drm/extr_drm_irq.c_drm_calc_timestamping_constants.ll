; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_calc_timestamping_constants.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_irq.c_drm_calc_timestamping_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__, %struct.TYPE_3__, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"crtc %d: Can't calculate constants, dotclock = 0!\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"crtc %d: hwmode: htotal %d, vtotal %d, vdisplay %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"crtc %d: clock %d kHz framedur %d linedur %d, pixeldur %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_calc_timestamping_constants(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = mul nsw i32 %12, 1000
  store i32 %13, i32* %6, align 4
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %22, 2
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @div64_u64(i32 1000000000, i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %4, align 8
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %32 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 1000000000
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @div64_u64(i32 %35, i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %3, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %40 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %42, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %48, 1000000000
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @div64_u64(i32 %49, i32 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %5, align 8
  br label %59

53:                                               ; preds = %24
  %54 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %55 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %27
  %60 = load i8*, i8** %4, align 8
  %61 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %62 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %65 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %68 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %70 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %74 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %78 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %82 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i32, i32, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %76, i32 %80, i32 %84)
  %86 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %87 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sdiv i32 %90, 1000
  %92 = load i8*, i8** %5, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = load i8*, i8** %3, align 8
  %95 = ptrtoint i8* %94 to i32
  %96 = load i8*, i8** %4, align 8
  %97 = ptrtoint i8* %96 to i32
  %98 = call i32 (i8*, i32, i32, i32, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %91, i32 %93, i32 %95, i32 %97)
  ret void
}

declare dso_local i64 @div64_u64(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
