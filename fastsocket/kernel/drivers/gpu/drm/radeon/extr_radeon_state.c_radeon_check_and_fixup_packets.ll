; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_check_and_fixup_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_radeon_check_and_fixup_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_buffer = type { i32 }

@RADEON_RB3D_DEPTHOFFSET = common dso_local global i32 0, align 4
@RADEON_PP_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid depth buffer offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RADEON_RB3D_COLOROFFSET = common dso_local global i32 0, align 4
@RADEON_PP_CNTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid colour buffer offset\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid R200 texture offset\0A\00", align 1
@RADEON_PP_TXOFFSET_0 = common dso_local global i32 0, align 4
@RADEON_PP_TXFILTER_0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid R100 texture offset\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid R200 cubic texture offset\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid R100 cubic texture offset\0A\00", align 1
@RING_LOCALS = common dso_local global i32 0, align 4
@RADEON_SE_TCL_STATE_FLUSH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Unknown state packet ID %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.drm_file*, i32, %struct.drm_buffer*)* @radeon_check_and_fixup_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_check_and_fixup_packets(%struct.TYPE_4__* %0, %struct.drm_file* %1, i32 %2, %struct.drm_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_buffer*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.drm_file* %1, %struct.drm_file** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.drm_buffer* %3, %struct.drm_buffer** %9, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %131 [
    i32 146, label %14
    i32 154, label %33
    i32 182, label %50
    i32 181, label %50
    i32 180, label %50
    i32 179, label %50
    i32 178, label %50
    i32 177, label %50
    i32 141, label %63
    i32 140, label %63
    i32 139, label %63
    i32 210, label %80
    i32 209, label %80
    i32 208, label %80
    i32 207, label %80
    i32 206, label %80
    i32 205, label %80
    i32 150, label %102
    i32 149, label %102
    i32 148, label %102
    i32 161, label %124
    i32 138, label %130
    i32 136, label %130
    i32 132, label %130
    i32 147, label %130
    i32 145, label %130
    i32 137, label %130
    i32 129, label %130
    i32 134, label %130
    i32 133, label %130
    i32 135, label %130
    i32 157, label %130
    i32 156, label %130
    i32 155, label %130
    i32 128, label %130
    i32 130, label %130
    i32 131, label %130
    i32 202, label %130
    i32 201, label %130
    i32 200, label %130
    i32 199, label %130
    i32 198, label %130
    i32 197, label %130
    i32 196, label %130
    i32 195, label %130
    i32 166, label %130
    i32 162, label %130
    i32 158, label %130
    i32 221, label %130
    i32 163, label %130
    i32 164, label %130
    i32 188, label %130
    i32 187, label %130
    i32 186, label %130
    i32 185, label %130
    i32 184, label %130
    i32 183, label %130
    i32 159, label %130
    i32 220, label %130
    i32 204, label %130
    i32 217, label %130
    i32 175, label %130
    i32 174, label %130
    i32 172, label %130
    i32 171, label %130
    i32 170, label %130
    i32 169, label %130
    i32 168, label %130
    i32 173, label %130
    i32 167, label %130
    i32 216, label %130
    i32 215, label %130
    i32 214, label %130
    i32 213, label %130
    i32 212, label %130
    i32 211, label %130
    i32 144, label %130
    i32 143, label %130
    i32 142, label %130
    i32 176, label %130
    i32 165, label %130
    i32 153, label %130
    i32 152, label %130
    i32 151, label %130
    i32 203, label %130
    i32 219, label %130
    i32 218, label %130
    i32 222, label %130
    i32 194, label %130
    i32 193, label %130
    i32 192, label %130
    i32 191, label %130
    i32 190, label %130
    i32 189, label %130
    i32 160, label %130
  ]

14:                                               ; preds = %4
  %15 = load %struct.drm_buffer*, %struct.drm_buffer** %9, align 8
  %16 = load i32, i32* @RADEON_RB3D_DEPTHOFFSET, align 4
  %17 = load i32, i32* @RADEON_PP_MISC, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sdiv i32 %18, 4
  %20 = call i32* @drm_buffer_pointer_to_dword(%struct.drm_buffer* %15, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_4__* %21, %struct.drm_file* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %137

30:                                               ; preds = %14
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %136

33:                                               ; preds = %4
  %34 = load %struct.drm_buffer*, %struct.drm_buffer** %9, align 8
  %35 = load i32, i32* @RADEON_RB3D_COLOROFFSET, align 4
  %36 = load i32, i32* @RADEON_PP_CNTL, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sdiv i32 %37, 4
  %39 = call i32* @drm_buffer_pointer_to_dword(%struct.drm_buffer* %34, i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_4__* %40, %struct.drm_file* %41, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %137

49:                                               ; preds = %33
  br label %136

50:                                               ; preds = %4, %4, %4, %4, %4, %4
  %51 = load %struct.drm_buffer*, %struct.drm_buffer** %9, align 8
  %52 = call i32* @drm_buffer_pointer_to_dword(%struct.drm_buffer* %51, i32 0)
  store i32* %52, i32** %10, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_4__* %53, %struct.drm_file* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %137

62:                                               ; preds = %50
  br label %136

63:                                               ; preds = %4, %4, %4
  %64 = load %struct.drm_buffer*, %struct.drm_buffer** %9, align 8
  %65 = load i32, i32* @RADEON_PP_TXOFFSET_0, align 4
  %66 = load i32, i32* @RADEON_PP_TXFILTER_0, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sdiv i32 %67, 4
  %69 = call i32* @drm_buffer_pointer_to_dword(%struct.drm_buffer* %64, i32 %68)
  store i32* %69, i32** %10, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_4__* %70, %struct.drm_file* %71, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %137

79:                                               ; preds = %63
  br label %136

80:                                               ; preds = %4, %4, %4, %4, %4, %4
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %98, %80
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 5
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load %struct.drm_buffer*, %struct.drm_buffer** %9, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32* @drm_buffer_pointer_to_dword(%struct.drm_buffer* %85, i32 %86)
  store i32* %87, i32** %10, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_4__* %88, %struct.drm_file* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %137

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %81

101:                                              ; preds = %81
  br label %136

102:                                              ; preds = %4, %4, %4
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %120, %102
  %104 = load i32, i32* %12, align 4
  %105 = icmp slt i32 %104, 5
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load %struct.drm_buffer*, %struct.drm_buffer** %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32* @drm_buffer_pointer_to_dword(%struct.drm_buffer* %107, i32 %108)
  store i32* %109, i32** %10, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @radeon_check_and_fixup_offset(%struct.TYPE_4__* %110, %struct.drm_file* %111, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %137

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %12, align 4
  br label %103

123:                                              ; preds = %103
  br label %136

124:                                              ; preds = %4
  %125 = load i32, i32* @RING_LOCALS, align 4
  %126 = call i32 @BEGIN_RING(i32 2)
  %127 = load i32, i32* @RADEON_SE_TCL_STATE_FLUSH, align 4
  %128 = call i32 @OUT_RING_REG(i32 %127, i32 0)
  %129 = call i32 (...) @ADVANCE_RING()
  br label %136

130:                                              ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  br label %136

131:                                              ; preds = %4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %137

136:                                              ; preds = %130, %124, %123, %101, %79, %62, %49, %30
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %136, %131, %115, %93, %75, %58, %45, %26
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local i32* @drm_buffer_pointer_to_dword(%struct.drm_buffer*, i32) #1

declare dso_local i32 @radeon_check_and_fixup_offset(%struct.TYPE_4__*, %struct.drm_file*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING_REG(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
