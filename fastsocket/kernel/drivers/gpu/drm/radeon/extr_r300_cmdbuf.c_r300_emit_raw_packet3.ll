; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_raw_packet3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_raw_packet3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Not a packet3 header (0x%08x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"Expected packet3 of length %d but have only %d bytes left\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"packet3 INDX_BUFFER without preceding 3D_DRAW_INDX_2 is illegal.\0A\00", align 1
@RADEON_FLUSH_EMITED = common dso_local global i32 0, align 4
@RADEON_PURGE_EMITED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unknown packet3 header (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @r300_emit_raw_packet3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_emit_raw_packet3(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %8 = load i32, i32* @RING_LOCALS, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @drm_buffer_unprocessed(i32 %11)
  %13 = icmp sgt i32 4, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %113

17:                                               ; preds = %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @drm_buffer_pointer_to_dword(i32 %20, i32 0)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 30
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %113

32:                                               ; preds = %17
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 16383
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 2
  %39 = mul nsw i32 %38, 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @drm_buffer_unprocessed(i32 %42)
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 2
  %48 = mul nsw i32 %47, 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @drm_buffer_unprocessed(i32 %51)
  %53 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %113

56:                                               ; preds = %32
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 65280
  switch i32 %59, label %96 [
    i32 135, label %60
    i32 134, label %66
    i32 130, label %70
    i32 133, label %74
    i32 131, label %74
    i32 132, label %83
    i32 128, label %95
    i32 129, label %95
  ]

60:                                               ; preds = %56
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @r300_emit_3d_load_vbpntr(%struct.TYPE_11__* %61, %struct.TYPE_12__* %62, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %113

66:                                               ; preds = %56
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = call i32 @r300_emit_bitblt_multi(%struct.TYPE_11__* %67, %struct.TYPE_12__* %68)
  store i32 %69, i32* %3, align 4
  br label %113

70:                                               ; preds = %56
  %71 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %113

74:                                               ; preds = %56, %56
  %75 = load i32, i32* @RADEON_FLUSH_EMITED, align 4
  %76 = load i32, i32* @RADEON_PURGE_EMITED, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %102

83:                                               ; preds = %56
  %84 = load i32, i32* @RADEON_FLUSH_EMITED, align 4
  %85 = load i32, i32* @RADEON_PURGE_EMITED, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = call i32 @r300_emit_draw_indx_2(%struct.TYPE_11__* %92, %struct.TYPE_12__* %93)
  store i32 %94, i32* %3, align 4
  br label %113

95:                                               ; preds = %56, %56
  br label %102

96:                                               ; preds = %56
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %113

102:                                              ; preds = %95, %74
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 2
  %105 = call i32 @BEGIN_RING(i32 %104)
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 2
  %111 = call i32 @OUT_RING_DRM_BUFFER(i32 %108, i32 %110)
  %112 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %102, %96, %83, %70, %66, %60, %45, %26, %14
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @drm_buffer_unprocessed(i32) #1

declare dso_local i32* @drm_buffer_pointer_to_dword(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @r300_emit_3d_load_vbpntr(%struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @r300_emit_bitblt_multi(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @r300_emit_draw_indx_2(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING_DRM_BUFFER(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
