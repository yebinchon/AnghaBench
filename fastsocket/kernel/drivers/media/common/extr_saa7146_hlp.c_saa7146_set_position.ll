; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_set_position.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_hlp.c_saa7146_set_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.saa7146_format = type { i32 }
%struct.saa7146_video_dma = type { i32, i64, i32, i8*, i8*, i8* }

@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146_dev*, i32, i32, i32, i32, i8*)* @saa7146_set_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7146_set_position(%struct.saa7146_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.saa7146_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.saa7146_vv*, align 8
  %14 = alloca %struct.saa7146_format*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.saa7146_video_dma, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %19 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %20 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %19, i32 0, i32 0
  %21 = load %struct.saa7146_vv*, %struct.saa7146_vv** %20, align 8
  store %struct.saa7146_vv* %21, %struct.saa7146_vv** %13, align 8
  %22 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %22, i8* %23)
  store %struct.saa7146_format* %24, %struct.saa7146_format** %14, align 8
  %25 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  %26 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %25, i32 0, i32 3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  %31 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  %35 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  %36 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %17, align 8
  %40 = load i32, i32* %16, align 4
  %41 = mul nsw i32 2, %40
  %42 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  %44 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 0, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %6
  %48 = load i8*, i8** %17, align 8
  %49 = load i32, i32* %9, align 4
  %50 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 2
  %53 = mul nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr i8, i8* %48, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sdiv i32 %57, 8
  %59 = mul nsw i32 %56, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %55, i64 %60
  %62 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 4
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 4
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sdiv i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %64, i64 %68
  %70 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 5
  store i8* %69, i8** %70, align 8
  %71 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %75, 2
  %77 = mul nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr i8, i8* %72, i64 %78
  %80 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 3
  store i8* %79, i8** %80, align 8
  br label %119

81:                                               ; preds = %6
  %82 = load i8*, i8** %17, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  %86 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sdiv i32 %87, 2
  %89 = mul nsw i32 %85, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %82, i64 %90
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %15, align 4
  %94 = sdiv i32 %93, 8
  %95 = mul nsw i32 %92, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr i8, i8* %91, i64 %96
  %98 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 4
  store i8* %97, i8** %98, align 8
  %99 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sdiv i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr i8, i8* %100, i64 %105
  %107 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 5
  store i8* %106, i8** %107, align 8
  %108 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 5
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %112, 2
  %114 = mul nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = sub i64 0, %115
  %117 = getelementptr i8, i8* %109, i64 %116
  %118 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 3
  store i8* %117, i8** %118, align 8
  br label %119

119:                                              ; preds = %81, %47
  %120 = load i32, i32* %11, align 4
  %121 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %163

124:                                              ; preds = %119
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 5
  store i8* %130, i8** %131, align 8
  %132 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sdiv i32 %133, 2
  store i32 %134, i32* %132, align 8
  br label %162

135:                                              ; preds = %124
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 3
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 5
  store i8* %141, i8** %142, align 8
  %143 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sdiv i32 %144, 2
  store i32 %145, i32* %143, align 8
  br label %161

146:                                              ; preds = %135
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 5
  store i8* %152, i8** %153, align 8
  %154 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 3
  %155 = load i8*, i8** %154, align 8
  %156 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 4
  store i8* %155, i8** %156, align 8
  %157 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = sdiv i32 %158, 2
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %150, %146
  br label %161

161:                                              ; preds = %160, %139
  br label %162

162:                                              ; preds = %161, %128
  br label %163

163:                                              ; preds = %162, %123
  %164 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  %165 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 0, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = mul nsw i32 %170, -1
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %168, %163
  %173 = load %struct.saa7146_format*, %struct.saa7146_format** %14, align 8
  %174 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 2
  store i32 %175, i32* %176, align 8
  %177 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  %178 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %177, i32 0, i32 1
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = shl i32 %181, 16
  %183 = sext i32 %182 to i64
  %184 = load %struct.saa7146_vv*, %struct.saa7146_vv** %13, align 8
  %185 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %184, i32 0, i32 1
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %183, %188
  %190 = getelementptr inbounds %struct.saa7146_video_dma, %struct.saa7146_video_dma* %18, i32 0, i32 1
  store i64 %189, i64* %190, align 8
  %191 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %192 = call i32 @saa7146_write_out_dma(%struct.saa7146_dev* %191, i32 1, %struct.saa7146_video_dma* %18)
  ret void
}

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i8*) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @saa7146_write_out_dma(%struct.saa7146_dev*, i32, %struct.saa7146_video_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
