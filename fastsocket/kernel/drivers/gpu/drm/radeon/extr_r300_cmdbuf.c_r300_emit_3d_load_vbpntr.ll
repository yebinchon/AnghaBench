; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_3d_load_vbpntr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_3d_load_vbpntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@RADEON_CP_PACKET_COUNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Too large payload in 3D_LOAD_VBPNTR (count=%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Offset failed range check (k=%d i=%d) while processing 3D_LOAD_VBPNTR packet.\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Malformed 3D_LOAD_VBPNTR packet (k=%d i=%d narrays=%d count+1=%d).\0A\00", align 1
@MAX_ARRAY_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @r300_emit_3d_load_vbpntr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_emit_3d_load_vbpntr(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @RING_LOCALS, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @RADEON_CP_PACKET_COUNT_MASK, align 4
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, 1
  %20 = icmp sgt i32 %19, 64
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %128

26:                                               ; preds = %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @drm_buffer_advance(i32 %29, i32 4)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @drm_buffer_pointer_to_dword(i32 %33, i32 0)
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %36

36:                                               ; preds = %92, %26
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i1 [ false, %36 ], [ %44, %40 ]
  br i1 %46, label %47, label %97

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32* @drm_buffer_pointer_to_dword(i32 %52, i32 %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @radeon_check_offset(i32* %55, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %128

66:                                               ; preds = %47
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %97

75:                                               ; preds = %66
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32* @drm_buffer_pointer_to_dword(i32 %78, i32 %79)
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @radeon_check_offset(i32* %81, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %128

92:                                               ; preds = %75
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %36

97:                                               ; preds = %74, %45
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %101, %97
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108, i32 %109, i32 %111)
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %128

115:                                              ; preds = %101
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 2
  %118 = call i32 @BEGIN_RING(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @OUT_RING(i32 %119)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i32 @OUT_RING_DRM_BUFFER(i32 %123, i32 %125)
  %127 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %115, %106, %86, %60, %21
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @drm_buffer_advance(i32, i32) #1

declare dso_local i32* @drm_buffer_pointer_to_dword(i32, i32) #1

declare dso_local i32 @radeon_check_offset(i32*, i32) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @OUT_RING_DRM_BUFFER(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
