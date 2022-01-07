; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_draw_indx_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_emit_draw_indx_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@RING_LOCALS = common dso_local global i32 0, align 4
@RADEON_CP_PACKET_COUNT_MASK = common dso_local global i32 0, align 4
@R300_VAP_VF_CNTL__INDEX_SIZE_32bit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"3D_DRAW_INDX_2: packet size %i, expected %i\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"3D_DRAW_INDX_2: expect subsequent INDX_BUFFER, but stream is too short.\0A\00", align 1
@R300_CMD_PACKET3 = common dso_local global i64 0, align 8
@R300_CMD_PACKET3_RAW = common dso_local global i64 0, align 8
@RADEON_CP_INDX_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"3D_DRAW_INDX_2: expect subsequent INDX_BUFFER.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Invalid indx_buffer reg address %08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid indx_buffer offset is %08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"INDX_BUFFER: buffer size %i, expected %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @r300_emit_draw_indx_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r300_emit_draw_indx_2(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @drm_buffer_pointer_to_dword(i32 %17, i32 0)
  store i32* %18, i32** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @drm_buffer_pointer_to_dword(i32 %21, i32 1)
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* @RING_LOCALS, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RADEON_CP_PACKET_COUNT_MASK, align 4
  %27 = and i32 %25, %26
  %28 = ashr i32 %27, 16
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 16
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @R300_VAP_VF_CNTL__INDEX_SIZE_32bit, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %2
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %165

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 2
  %57 = call i32 @BEGIN_RING(i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 2
  %63 = call i32 @OUT_RING_DRM_BUFFER(i32 %60, i32 %62)
  %64 = call i32 (...) @ADVANCE_RING()
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %164, label %67

67:                                               ; preds = %54
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @drm_buffer_unprocessed(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %72, 32
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %165

78:                                               ; preds = %67
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.TYPE_11__* @drm_buffer_read_object(i32 %81, i32 16, %struct.TYPE_11__* %10)
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %11, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32* @drm_buffer_pointer_to_dword(i32 %85, i32 0)
  store i32* %86, i32** %6, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32* @drm_buffer_pointer_to_dword(i32 %89, i32 1)
  store i32* %90, i32** %12, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32* @drm_buffer_pointer_to_dword(i32 %93, i32 2)
  store i32* %94, i32** %13, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @drm_buffer_pointer_to_dword(i32 %97, i32 3)
  store i32* %98, i32** %14, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @R300_CMD_PACKET3, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %118, label %105

105:                                              ; preds = %78
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @R300_CMD_PACKET3_RAW, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %105
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RADEON_CP_INDX_BUFFER, align 4
  %116 = call i32 @CP_PACKET3(i32 %115, i32 2)
  %117 = icmp ne i32 %114, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112, %105, %78
  %119 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %165

122:                                              ; preds = %112
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, -2147418113
  %126 = icmp ne i32 %125, -2147481584
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %165

133:                                              ; preds = %122
  %134 = load i32*, i32** %4, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @radeon_check_offset(i32* %134, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %133
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %165

145:                                              ; preds = %133
  %146 = load i32*, i32** %14, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load i32*, i32** %14, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %165

157:                                              ; preds = %145
  %158 = call i32 @BEGIN_RING(i32 4)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @OUT_RING_DRM_BUFFER(i32 %161, i32 4)
  %163 = call i32 (...) @ADVANCE_RING()
  br label %164

164:                                              ; preds = %157, %54
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %150, %139, %127, %118, %74, %48
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32* @drm_buffer_pointer_to_dword(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING_DRM_BUFFER(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @drm_buffer_unprocessed(i32) #1

declare dso_local %struct.TYPE_11__* @drm_buffer_read_object(i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @CP_PACKET3(i32, i32) #1

declare dso_local i32 @radeon_check_offset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
