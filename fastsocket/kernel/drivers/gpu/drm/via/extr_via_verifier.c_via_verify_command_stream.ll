; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_verify_command_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/via/extr_via_verifier.c_via_verify_command_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32, %struct.drm_device* }

@VIA_PRO_GROUP_A = common dso_local global i64 0, align 8
@VIA_DX9_0 = common dso_local global i64 0, align 8
@no_sequence = common dso_local global i32 0, align 4
@HALCYON_HEADER2 = common dso_local global i32 0, align 4
@HALCYON_HEADER1MASK = common dso_local global i32 0, align 4
@HALCYON_HEADER1 = common dso_local global i32 0, align 4
@VIA_VIDEOMASK = common dso_local global i32 0, align 4
@VIA_VIDEO_HEADER5 = common dso_local global i32 0, align 4
@VIA_VIDEO_HEADER6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Accelerated 3D is not supported on this chipset yet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Invalid / Unimplemented DMA HEADER command. 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @via_verify_command_stream(i32* %0, i32 %1, %struct.drm_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.drm_device* %2, %struct.drm_device** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %10, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %11, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = bitcast %struct.TYPE_4__* %12 to i8*
  %26 = bitcast %struct.TYPE_4__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 40, i1 false)
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = lshr i32 %28, 2
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32* %31, i32** %14, align 8
  store i32 133, i32* %15, align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VIA_PRO_GROUP_A, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VIA_DX9_0, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %37, %4
  %44 = phi i1 [ true, %4 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VIA_DX9_0, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %17, align 4
  %52 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store %struct.drm_device* %52, %struct.drm_device** %54, align 8
  %55 = load i32, i32* @no_sequence, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32* %63, i32** %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %147, %43
  %69 = load i32*, i32** %6, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ult i32* %69, %70
  br i1 %71, label %72, label %148

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  switch i32 %73, label %141 [
    i32 130, label %74
    i32 131, label %78
    i32 129, label %81
    i32 128, label %84
    i32 133, label %87
    i32 132, label %140
  ]

74:                                               ; preds = %72
  %75 = load i32*, i32** %14, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %77 = call i32 @via_check_header2(i32** %6, i32* %75, %struct.TYPE_4__* %76)
  store i32 %77, i32* %15, align 4
  br label %147

78:                                               ; preds = %72
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @via_check_header1(i32** %6, i32* %79)
  store i32 %80, i32* %15, align 4
  br label %147

81:                                               ; preds = %72
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @via_check_vheader5(i32** %6, i32* %82)
  store i32 %83, i32* %15, align 4
  br label %147

84:                                               ; preds = %72
  %85 = load i32*, i32** %14, align 8
  %86 = call i32 @via_check_vheader6(i32** %6, i32* %85)
  store i32 %86, i32* %15, align 4
  br label %147

87:                                               ; preds = %72
  %88 = load i32, i32* @HALCYON_HEADER2, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %13, align 4
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 130, i32* %15, align 4
  br label %139

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @HALCYON_HEADER1MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* @HALCYON_HEADER1, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 131, i32* %15, align 4
  br label %138

103:                                              ; preds = %96
  %104 = load i32, i32* %16, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @VIA_VIDEOMASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @VIA_VIDEO_HEADER5, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 129, i32* %15, align 4
  br label %137

113:                                              ; preds = %106, %103
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @VIA_VIDEOMASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @VIA_VIDEO_HEADER6, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 128, i32* %15, align 4
  br label %136

123:                                              ; preds = %116, %113
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @HALCYON_HEADER2, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 132, i32* %15, align 4
  br label %135

132:                                              ; preds = %127, %123
  %133 = load i32, i32* %13, align 4
  %134 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  store i32 132, i32* %15, align 4
  br label %135

135:                                              ; preds = %132, %130
  br label %136

136:                                              ; preds = %135, %122
  br label %137

137:                                              ; preds = %136, %112
  br label %138

138:                                              ; preds = %137, %102
  br label %139

139:                                              ; preds = %138, %95
  br label %147

140:                                              ; preds = %72
  br label %141

141:                                              ; preds = %72, %140
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %143 = bitcast %struct.TYPE_4__* %142 to i8*
  %144 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 40, i1 false)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %5, align 4
  br label %158

147:                                              ; preds = %139, %84, %81, %78, %74
  br label %68

148:                                              ; preds = %68
  %149 = load i32, i32* %15, align 4
  %150 = icmp eq i32 %149, 132
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %153 = bitcast %struct.TYPE_4__* %152 to i8*
  %154 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 40, i1 false)
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %5, align 4
  br label %158

157:                                              ; preds = %148
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %157, %151, %141
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @via_check_header2(i32**, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @via_check_header1(i32**, i32*) #2

declare dso_local i32 @via_check_vheader5(i32**, i32*) #2

declare dso_local i32 @via_check_vheader6(i32**, i32*) #2

declare dso_local i32 @DRM_ERROR(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
