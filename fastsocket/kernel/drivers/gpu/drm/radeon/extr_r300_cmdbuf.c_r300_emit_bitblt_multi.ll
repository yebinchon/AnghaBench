; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_bitblt_multi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_bitblt_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@RADEON_CP_PACKET_COUNT_MASK = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid bitblt first offset is %08X\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid bitblt second offset is %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @r300_emit_bitblt_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_emit_bitblt_multi(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @drm_buffer_pointer_to_dword(i32 %15, i32 0)
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* @RING_LOCALS, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RADEON_CP_PACKET_COUNT_MASK, align 4
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 32768
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @drm_buffer_pointer_to_dword(i32 %30, i32 1)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RADEON_GMC_SRC_PITCH_OFFSET_CNTL, align 4
  %35 = load i32, i32* @RADEON_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %27
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @drm_buffer_pointer_to_dword(i32 %42, i32 2)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 10
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @radeon_check_offset(i32* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %39
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %107

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @RADEON_GMC_SRC_PITCH_OFFSET_CNTL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %61
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RADEON_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %67
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @drm_buffer_pointer_to_dword(i32 %76, i32 3)
  store i32* %77, i32** %12, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 10
  store i32 %80, i32* %9, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @radeon_check_offset(i32* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %73
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %107

94:                                               ; preds = %73
  br label %95

95:                                               ; preds = %94, %67, %61
  br label %96

96:                                               ; preds = %95, %2
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 2
  %99 = call i32 @BEGIN_RING(i32 %98)
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 2
  %105 = call i32 @OUT_RING_DRM_BUFFER(i32 %102, i32 %104)
  %106 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %96, %89, %55
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32* @drm_buffer_pointer_to_dword(i32, i32) #1

declare dso_local i32 @radeon_check_offset(i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING_DRM_BUFFER(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
