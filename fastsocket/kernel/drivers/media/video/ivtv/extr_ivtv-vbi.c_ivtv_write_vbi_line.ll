; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-vbi.c_ivtv_write_vbi_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-vbi.c_ivtv_write_vbi_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, %struct.vbi_info }
%struct.vbi_info = type { i32, %struct.vbi_vps }
%struct.vbi_vps = type { i32* }
%struct.v4l2_sliced_vbi_data = type { i64, i32, i64, i32* }
%struct.vbi_cc = type { i32*, i32* }

@V4L2_SLICED_CAPTION_525 = common dso_local global i64 0, align 8
@V4L2_SLICED_VPS = common dso_local global i64 0, align 8
@IVTV_F_I_UPDATE_VPS = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i64 0, align 8
@IVTV_F_I_UPDATE_WSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, %struct.v4l2_sliced_vbi_data*, %struct.vbi_cc*, i32*)* @ivtv_write_vbi_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_write_vbi_line(%struct.ivtv* %0, %struct.v4l2_sliced_vbi_data* %1, %struct.vbi_cc* %2, i32* %3) #0 {
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %7 = alloca %struct.vbi_cc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vbi_info*, align 8
  %10 = alloca %struct.vbi_vps, align 8
  %11 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store %struct.v4l2_sliced_vbi_data* %1, %struct.v4l2_sliced_vbi_data** %6, align 8
  store %struct.vbi_cc* %2, %struct.vbi_cc** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 1
  store %struct.vbi_info* %13, %struct.vbi_info** %9, align 8
  %14 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_SLICED_CAPTION_525, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %4
  %20 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 21
  br i1 %23, label %24, label %69

24:                                               ; preds = %19
  %25 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vbi_cc*, %struct.vbi_cc** %7, align 8
  %36 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vbi_cc*, %struct.vbi_cc** %7, align 8
  %45 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %43, i32* %47, align 4
  br label %67

48:                                               ; preds = %24
  %49 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.vbi_cc*, %struct.vbi_cc** %7, align 8
  %55 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.vbi_cc*, %struct.vbi_cc** %7, align 8
  %64 = getelementptr inbounds %struct.vbi_cc, %struct.vbi_cc* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %48, %29
  %68 = load i32*, i32** %8, align 8
  store i32 1, i32* %68, align 4
  br label %185

69:                                               ; preds = %19, %4
  %70 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @V4L2_SLICED_VPS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %140

75:                                               ; preds = %69
  %76 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %77 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 16
  br i1 %79, label %80, label %140

80:                                               ; preds = %75
  %81 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %140

85:                                               ; preds = %80
  %86 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %87 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.vbi_vps, %struct.vbi_vps* %10, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %95 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.vbi_vps, %struct.vbi_vps* %10, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 %98, i32* %101, align 4
  %102 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %103 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 9
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.vbi_vps, %struct.vbi_vps* %10, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  store i32 %106, i32* %109, align 4
  %110 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 10
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.vbi_vps, %struct.vbi_vps* %10, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 %114, i32* %117, align 4
  %118 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %119 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 11
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.vbi_vps, %struct.vbi_vps* %10, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 4
  store i32 %122, i32* %125, align 4
  %126 = load %struct.vbi_info*, %struct.vbi_info** %9, align 8
  %127 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %126, i32 0, i32 1
  %128 = call i64 @memcmp(%struct.vbi_vps* %10, %struct.vbi_vps* %127, i32 8)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %85
  %131 = load %struct.vbi_info*, %struct.vbi_info** %9, align 8
  %132 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %131, i32 0, i32 1
  %133 = bitcast %struct.vbi_vps* %132 to i8*
  %134 = bitcast %struct.vbi_vps* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 8, i1 false)
  %135 = load i32, i32* @IVTV_F_I_UPDATE_VPS, align 4
  %136 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %137 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %136, i32 0, i32 0
  %138 = call i32 @set_bit(i32 %135, i32* %137)
  br label %139

139:                                              ; preds = %130, %85
  br label %184

140:                                              ; preds = %80, %75, %69
  %141 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %142 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @V4L2_SLICED_WSS_625, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %183

146:                                              ; preds = %140
  %147 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %148 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 23
  br i1 %150, label %151, label %183

151:                                              ; preds = %146
  %152 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %153 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %183

156:                                              ; preds = %151
  %157 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %158 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %6, align 8
  %163 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = shl i32 %166, 8
  %168 = or i32 %161, %167
  store i32 %168, i32* %11, align 4
  %169 = load %struct.vbi_info*, %struct.vbi_info** %9, align 8
  %170 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %156
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.vbi_info*, %struct.vbi_info** %9, align 8
  %177 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @IVTV_F_I_UPDATE_WSS, align 4
  %179 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %180 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %179, i32 0, i32 0
  %181 = call i32 @set_bit(i32 %178, i32* %180)
  br label %182

182:                                              ; preds = %174, %156
  br label %183

183:                                              ; preds = %182, %151, %146, %140
  br label %184

184:                                              ; preds = %183, %139
  br label %185

185:                                              ; preds = %184, %67
  ret void
}

declare dso_local i64 @memcmp(%struct.vbi_vps*, %struct.vbi_vps*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
