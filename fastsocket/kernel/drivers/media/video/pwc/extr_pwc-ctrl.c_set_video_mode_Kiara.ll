; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_set_video_mode_Kiara.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_set_video_mode_Kiara.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Kiara_table_entry = type { i32, i32, i32, i64, i8*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pwc_device = type { i64, i32, i8*, i32, i32, i32, i64, i64, i32, %struct.TYPE_4__, i32 }

@PSZ_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PSZ_VGA = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Choosing VGA/5 BAYER mode.\0A\00", align 1
@Kiara_table = common dso_local global %struct.Kiara_table_entry*** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Using alternate setting %d.\0A\00", align 1
@pwc_image_sizes = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"frame_size=%d, vframes=%d, vsize=%d, vsnapshot=%d, vbandlength=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, i32, i32, i32, i32)* @set_video_mode_Kiara to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_video_mode_Kiara(%struct.pwc_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pwc_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.Kiara_table_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [12 x i8], align 1
  %16 = alloca %struct.Kiara_table_entry, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.Kiara_table_entry* null, %struct.Kiara_table_entry** %12, align 8
  %17 = bitcast %struct.Kiara_table_entry* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 88, i1 false)
  %18 = bitcast i8* %17 to %struct.Kiara_table_entry*
  %19 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %18, i32 0, i32 0
  store i32 6, i32* %19, align 8
  %20 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %18, i32 0, i32 1
  store i32 773, i32* %20, align 4
  %21 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %18, i32 0, i32 2
  store i32 1272, i32* %21, align 8
  %22 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %18, i32 0, i32 3
  store i64 173, i64* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PSZ_MAX, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 5
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 30
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp sgt i32 %36, 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %35, %32, %29, %26, %5
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %238

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @PSZ_VGA, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 15
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %238

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %9, align 4
  %53 = sdiv i32 %52, 5
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @PSZ_VGA, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %66 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call i32 @PWC_DEBUG_SIZE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store %struct.Kiara_table_entry* %16, %struct.Kiara_table_entry** %12, align 8
  br label %98

72:                                               ; preds = %64, %61, %58, %51
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %94, %72
  %74 = load i32, i32* %10, align 4
  %75 = icmp sle i32 %74, 3
  br i1 %75, label %76, label %97

76:                                               ; preds = %73
  %77 = load %struct.Kiara_table_entry***, %struct.Kiara_table_entry**** @Kiara_table, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.Kiara_table_entry**, %struct.Kiara_table_entry*** %77, i64 %79
  %81 = load %struct.Kiara_table_entry**, %struct.Kiara_table_entry*** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %81, i64 %83
  %85 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %85, i64 %87
  store %struct.Kiara_table_entry* %88, %struct.Kiara_table_entry** %12, align 8
  %89 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %12, align 8
  %90 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %76
  br label %97

94:                                               ; preds = %76
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %73

97:                                               ; preds = %93, %73
  br label %98

98:                                               ; preds = %97, %70
  %99 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %12, align 8
  %100 = icmp eq %struct.Kiara_table_entry* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %12, align 8
  %103 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101, %98
  %107 = load i32, i32* @ENOENT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %238

109:                                              ; preds = %101
  %110 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %12, align 8
  %111 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 (i8*, i32, ...) @PWC_TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %116 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %12, align 8
  %117 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %116, i32 0, i32 4
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @memcpy(i8* %115, i8* %118, i32 12)
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %109
  %123 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %125, 128
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %123, align 1
  br label %128

128:                                              ; preds = %122, %109
  %129 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %130 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %131 = call i32 @send_video_command(%struct.pwc_device* %129, i32 4, i8* %130, i32 12)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %6, align 4
  br label %238

136:                                              ; preds = %128
  %137 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %12, align 8
  %138 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %137, i32 0, i32 5
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %136
  %142 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %143 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %141
  %148 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %149 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %150 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %153 = call i32 @pwc_dec23_init(%struct.pwc_device* %148, i32 %151, i8* %152)
  br label %154

154:                                              ; preds = %147, %141, %136
  %155 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %156 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %155, i32 0, i32 1
  store i32 12, i32* %156, align 8
  %157 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %158 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds [12 x i8], [12 x i8]* %15, i64 0, i64 0
  %161 = call i32 @memcpy(i8* %159, i8* %160, i32 12)
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %164 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %167 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %170 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  %171 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %12, align 8
  %172 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %175 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %174, i32 0, i32 6
  store i64 %173, i64* %175, align 8
  %176 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %177 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %176, i32 0, i32 9
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwc_image_sizes, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %180
  %182 = bitcast %struct.TYPE_4__* %177 to i8*
  %183 = bitcast %struct.TYPE_4__* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %182, i8* align 4 %183, i64 8, i1 false)
  %184 = load %struct.Kiara_table_entry*, %struct.Kiara_table_entry** %12, align 8
  %185 = getelementptr inbounds %struct.Kiara_table_entry, %struct.Kiara_table_entry* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %188 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %187, i32 0, i32 7
  store i64 %186, i64* %188, align 8
  %189 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %190 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %189, i32 0, i32 7
  %191 = load i64, i64* %190, align 8
  %192 = icmp sgt i64 %191, 0
  br i1 %192, label %193, label %207

193:                                              ; preds = %154
  %194 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %195 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %194, i32 0, i32 7
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %198 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %197, i32 0, i32 9
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = mul nsw i64 %196, %201
  %203 = sdiv i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %206 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %205, i32 0, i32 8
  store i32 %204, i32* %206, align 8
  br label %221

207:                                              ; preds = %154
  %208 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %209 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %208, i32 0, i32 9
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %213 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %212, i32 0, i32 9
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %211, %215
  %217 = mul nsw i32 %216, 12
  %218 = sdiv i32 %217, 8
  %219 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %220 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %219, i32 0, i32 8
  store i32 %218, i32* %220, align 8
  br label %221

221:                                              ; preds = %207, %193
  %222 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %223 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %226 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %229 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %232 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %235 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %234, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = call i32 (i8*, i32, ...) @PWC_TRACE(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %224, i32 %227, i32 %230, i32 %233, i64 %236)
  store i32 0, i32* %6, align 4
  br label %238

238:                                              ; preds = %221, %134, %106, %48, %38
  %239 = load i32, i32* %6, align 4
  ret i32 %239
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @PWC_DEBUG_SIZE(i8*) #2

declare dso_local i32 @PWC_TRACE(i8*, i32, ...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @send_video_command(%struct.pwc_device*, i32, i8*, i32) #2

declare dso_local i32 @pwc_dec23_init(%struct.pwc_device*, i32, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
