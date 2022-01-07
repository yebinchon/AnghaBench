; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-vbi.c_ivtv_vbi_work_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-vbi.c_ivtv_vbi_work_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbi_cc = type { i32*, i32* }
%struct.ivtv = type { i64, i32, i32, i64, %struct.vbi_info }
%struct.vbi_info = type { i32, i32, i32, i64, %struct.vbi_cc* }
%struct.v4l2_sliced_vbi_data = type { i32, i32*, i32 }

@__const.ivtv_vbi_work_handler.cc = private unnamed_addr constant %struct.vbi_cc { i32* inttoptr (i64 128 to i32*), i32* inttoptr (i64 128 to i32*) }, align 8
@OUT_PASSTHROUGH = common dso_local global i64 0, align 8
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@vbi = common dso_local global i32 0, align 4
@g_vbi_data = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@IVTV_F_I_UPDATE_WSS = common dso_local global i32 0, align 4
@IVTV_F_I_UPDATE_CC = common dso_local global i32 0, align 4
@IVTV_F_I_UPDATE_VPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_vbi_work_handler(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.vbi_info*, align 8
  %4 = alloca %struct.v4l2_sliced_vbi_data, align 8
  %5 = alloca %struct.vbi_cc, align 8
  %6 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %7 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %8 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %7, i32 0, i32 4
  store %struct.vbi_info* %8, %struct.vbi_info** %3, align 8
  %9 = bitcast %struct.vbi_cc* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.vbi_cc* @__const.ivtv_vbi_work_handler.cc to i8*), i64 16, i1 false)
  %10 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @OUT_PASSTHROUGH, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %135

15:                                               ; preds = %1
  %16 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %15
  %21 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  %22 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 2
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %25 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @vbi, align 4
  %28 = load i32, i32* @g_vbi_data, align 4
  %29 = call i64 @v4l2_subdev_call(i32 %26, i32 %27, i32 %28, %struct.v4l2_sliced_vbi_data* %4)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %33 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 15
  %38 = call i32 @ivtv_set_wss(%struct.ivtv* %32, i32 1, i32 %37)
  %39 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %40 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %55

41:                                               ; preds = %20
  %42 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %43 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %48 = call i32 @ivtv_set_wss(%struct.ivtv* %47, i32 1, i32 8)
  br label %54

49:                                               ; preds = %41
  %50 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %51 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49, %46
  br label %55

55:                                               ; preds = %54, %31
  br label %134

56:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  %57 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  %58 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 2
  store i32 %57, i32* %58, align 8
  %59 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %61 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @vbi, align 4
  %64 = load i32, i32* @g_vbi_data, align 4
  %65 = call i64 @v4l2_subdev_call(i32 %62, i32 %63, i32 %64, %struct.v4l2_sliced_vbi_data* %4)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %56
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, 1
  store i32 %69, i32* %6, align 4
  %70 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %5, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %5, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %80, i32* %83, align 4
  br label %84

84:                                               ; preds = %67, %56
  %85 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %87 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @vbi, align 4
  %90 = load i32, i32* @g_vbi_data, align 4
  %91 = call i64 @v4l2_subdev_call(i32 %88, i32 %89, i32 %90, %struct.v4l2_sliced_vbi_data* %4)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, 2
  store i32 %95, i32* %6, align 4
  %96 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %5, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %99, i32* %102, align 4
  %103 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %4, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %5, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 %106, i32* %109, align 4
  br label %110

110:                                              ; preds = %93, %84
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %115 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @ivtv_set_cc(%struct.ivtv* %116, i32 %117, %struct.vbi_cc* %5)
  br label %133

119:                                              ; preds = %110
  %120 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %121 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 4
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %126 = call i32 @ivtv_set_cc(%struct.ivtv* %125, i32 0, %struct.vbi_cc* %5)
  br label %132

127:                                              ; preds = %119
  %128 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %129 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %127, %124
  br label %133

133:                                              ; preds = %132, %113
  br label %134

134:                                              ; preds = %133, %55
  br label %221

135:                                              ; preds = %1
  %136 = load i32, i32* @IVTV_F_I_UPDATE_WSS, align 4
  %137 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %138 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %137, i32 0, i32 1
  %139 = call i64 @test_and_clear_bit(i32 %136, i32* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %143 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %144 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 15
  %147 = call i32 @ivtv_set_wss(%struct.ivtv* %142, i32 1, i32 %146)
  br label %148

148:                                              ; preds = %141, %135
  %149 = load i32, i32* @IVTV_F_I_UPDATE_CC, align 4
  %150 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %151 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %150, i32 0, i32 1
  %152 = call i64 @test_bit(i32 %149, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %212

154:                                              ; preds = %148
  %155 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %156 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i32, i32* @IVTV_F_I_UPDATE_CC, align 4
  %161 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %162 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %161, i32 0, i32 1
  %163 = call i32 @clear_bit(i32 %160, i32* %162)
  %164 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %165 = call i32 @ivtv_set_cc(%struct.ivtv* %164, i32 3, %struct.vbi_cc* %5)
  br label %166

166:                                              ; preds = %159, %154
  br label %167

167:                                              ; preds = %207, %166
  %168 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %169 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %211

172:                                              ; preds = %167
  %173 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %174 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %173, i32 0, i32 4
  %175 = load %struct.vbi_cc*, %struct.vbi_cc** %174, align 8
  %176 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %175, i64 0
  %177 = bitcast %struct.vbi_cc* %5 to i8*
  %178 = bitcast %struct.vbi_cc* %176 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %177, i8* align 8 %178, i64 16, i1 false)
  %179 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %180 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %179, i32 0, i32 4
  %181 = load %struct.vbi_cc*, %struct.vbi_cc** %180, align 8
  %182 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %183 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %182, i32 0, i32 4
  %184 = load %struct.vbi_cc*, %struct.vbi_cc** %183, align 8
  %185 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %184, i64 1
  %186 = call i32 @memcpy(%struct.vbi_cc* %181, %struct.vbi_cc* %185, i32 -8)
  %187 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %188 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, -1
  store i64 %190, i64* %188, align 8
  %191 = load %struct.vbi_info*, %struct.vbi_info** %3, align 8
  %192 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %172
  %196 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %5, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 128
  br i1 %200, label %201, label %208

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %5, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 128
  br i1 %206, label %207, label %208

207:                                              ; preds = %201
  br label %167

208:                                              ; preds = %201, %195, %172
  %209 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %210 = call i32 @ivtv_set_cc(%struct.ivtv* %209, i32 3, %struct.vbi_cc* %5)
  br label %211

211:                                              ; preds = %208, %167
  br label %212

212:                                              ; preds = %211, %148
  %213 = load i32, i32* @IVTV_F_I_UPDATE_VPS, align 4
  %214 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %215 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %214, i32 0, i32 1
  %216 = call i64 @test_and_clear_bit(i32 %213, i32* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %212
  %219 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %220 = call i32 @ivtv_set_vps(%struct.ivtv* %219, i32 1)
  br label %221

221:                                              ; preds = %134, %218, %212
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_sliced_vbi_data*) #2

declare dso_local i32 @ivtv_set_wss(%struct.ivtv*, i32, i32) #2

declare dso_local i32 @ivtv_set_cc(%struct.ivtv*, i32, %struct.vbi_cc*) #2

declare dso_local i64 @test_and_clear_bit(i32, i32*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @memcpy(%struct.vbi_cc*, %struct.vbi_cc*, i32) #2

declare dso_local i32 @ivtv_set_vps(%struct.ivtv*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
