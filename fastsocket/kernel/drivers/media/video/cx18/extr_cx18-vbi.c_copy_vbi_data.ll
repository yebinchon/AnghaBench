; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-vbi.c_copy_vbi_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-vbi.c_copy_vbi_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32**, i32*, %struct.v4l2_sliced_vbi_data* }
%struct.v4l2_sliced_vbi_data = type { i64, i32, i32, i32* }

@copy_vbi_data.mpeg_hdr_data = internal constant [32 x i32] [i32 0, i32 0, i32 1, i32 186, i32 68, i32 0, i32 12, i32 102, i32 36, i32 1, i32 1, i32 209, i32 211, i32 250, i32 255, i32 255, i32 0, i32 0, i32 1, i32 189, i32 0, i32 26, i32 132, i32 128, i32 7, i32 33, i32 0, i32 93, i32 99, i32 167, i32 255, i32 255], align 16
@CX18_VBI_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ITV0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"itv0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, i32, i32)* @copy_vbi_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_vbi_data(%struct.cx18* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  store i32 128, i32* %11, align 4
  %18 = load %struct.cx18*, %struct.cx18** %4, align 8
  %19 = getelementptr inbounds %struct.cx18, %struct.cx18* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CX18_VBI_FRAMES, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.cx18*, %struct.cx18** %4, align 8
  %25 = getelementptr inbounds %struct.cx18, %struct.cx18* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32* %32, i32** %13, align 8
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %104, %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %107

37:                                               ; preds = %33
  %38 = load %struct.cx18*, %struct.cx18** %4, align 8
  %39 = getelementptr inbounds %struct.cx18, %struct.cx18* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %41, i64 %43
  store %struct.v4l2_sliced_vbi_data* %44, %struct.v4l2_sliced_vbi_data** %14, align 8
  %45 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %14, align 8
  %46 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %104

50:                                               ; preds = %37
  %51 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %14, align 8
  %52 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 6
  store i32 %54, i32* %16, align 4
  %55 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %14, align 8
  %56 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load i32, i32* %16, align 4
  %62 = add nsw i32 %61, 18
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %60, %50
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 32
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %16, align 4
  %68 = shl i32 1, %67
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  br label %79

72:                                               ; preds = %63
  %73 = load i32, i32* %16, align 4
  %74 = sub nsw i32 %73, 32
  %75 = shl i32 1, %74
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %72, %66
  %80 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %14, align 8
  %81 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @cx18_service2vbi(i64 %82)
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %85, 43
  %87 = add nsw i32 140, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32 %83, i32* %89, align 4
  %90 = load i32*, i32** %13, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 128
  %92 = getelementptr inbounds i32, i32* %91, i64 12
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %93, 43
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %14, align 8
  %99 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 (i32*, ...) @memcpy(i32* %97, i32* %100, i32 42)
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %79, %49
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  br label %33

107:                                              ; preds = %33
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 (i32*, ...) @memcpy(i32* %108, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @copy_vbi_data.mpeg_hdr_data, i64 0, i64 0), i64 128)
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 %110, 36
  br i1 %111, label %112, label %131

112:                                              ; preds = %107
  %113 = load i32*, i32** %13, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 128
  %115 = call i32 (i32*, ...) @memcpy(i32* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %116 = load i32*, i32** %13, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 128
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 128
  %121 = getelementptr inbounds i32, i32* %120, i64 12
  %122 = load i32, i32* %7, align 4
  %123 = mul nsw i32 %122, 43
  %124 = call i32 (i32*, ...) @memcpy(i32* %118, i32* %121, i32 %123)
  %125 = load i32, i32* %7, align 4
  %126 = mul nsw i32 43, %125
  %127 = add nsw i32 %126, 3
  %128 = and i32 %127, -4
  %129 = add nsw i32 4, %128
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %10, align 2
  br label %150

131:                                              ; preds = %107
  %132 = load i32*, i32** %13, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 128
  %134 = call i32 (i32*, ...) @memcpy(i32* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %136 = call i32 @cpu_to_le32s(i32* %135)
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %138 = call i32 @cpu_to_le32s(i32* %137)
  %139 = load i32*, i32** %13, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 128
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %143 = call i32 (i32*, ...) @memcpy(i32* %141, i32* %142, i32 8)
  %144 = load i32, i32* %7, align 4
  %145 = mul nsw i32 43, %144
  %146 = add nsw i32 %145, 3
  %147 = and i32 %146, -4
  %148 = add nsw i32 12, %147
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %10, align 2
  br label %150

150:                                              ; preds = %131, %112
  %151 = load i16, i16* %10, align 2
  %152 = zext i16 %151 to i32
  %153 = add nsw i32 %152, 10
  %154 = ashr i32 %153, 8
  %155 = load i32*, i32** %13, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 20
  store i32 %154, i32* %156, align 4
  %157 = load i16, i16* %10, align 2
  %158 = zext i16 %157 to i32
  %159 = add nsw i32 %158, 10
  %160 = and i32 %159, 255
  %161 = load i32*, i32** %13, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 21
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %6, align 4
  %164 = ashr i32 %163, 29
  %165 = and i32 %164, 6
  %166 = or i32 33, %165
  %167 = load i32*, i32** %13, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 25
  store i32 %166, i32* %168, align 4
  %169 = load i32, i32* %6, align 4
  %170 = ashr i32 %169, 22
  %171 = and i32 %170, 255
  %172 = load i32*, i32** %13, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 26
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %6, align 4
  %175 = ashr i32 %174, 14
  %176 = and i32 %175, 255
  %177 = or i32 1, %176
  %178 = load i32*, i32** %13, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 27
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %6, align 4
  %181 = ashr i32 %180, 7
  %182 = and i32 %181, 255
  %183 = load i32*, i32** %13, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 28
  store i32 %182, i32* %184, align 4
  %185 = load i32, i32* %6, align 4
  %186 = and i32 %185, 127
  %187 = shl i32 %186, 1
  %188 = or i32 1, %187
  %189 = load i32*, i32** %13, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 29
  store i32 %188, i32* %190, align 4
  %191 = load i16, i16* %10, align 2
  %192 = zext i16 %191 to i32
  %193 = add nsw i32 128, %192
  %194 = load %struct.cx18*, %struct.cx18** %4, align 8
  %195 = getelementptr inbounds %struct.cx18, %struct.cx18* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %193, i32* %200, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cx18_service2vbi(i64) #2

declare dso_local i32 @memcpy(i32*, ...) #2

declare dso_local i32 @cpu_to_le32s(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
