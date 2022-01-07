; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_write_overlay_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_write_overlay_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran_fh = type { i32*, %struct.TYPE_4__, %struct.zoran* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.zoran = type { i32 }
%struct.v4l2_clip = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@BUZ_MAX_WIDTH = common dso_local global i32 0, align 4
@BUZ_MAX_HEIGHT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_overlay_mask(%struct.zoran_fh* %0, %struct.v4l2_clip* %1, i32 %2) #0 {
  %4 = alloca %struct.zoran_fh*, align 8
  %5 = alloca %struct.v4l2_clip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zoran*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.zoran_fh* %0, %struct.zoran_fh** %4, align 8
  store %struct.v4l2_clip* %1, %struct.v4l2_clip** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.zoran_fh*, %struct.zoran_fh** %4, align 8
  %19 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %18, i32 0, i32 2
  %20 = load %struct.zoran*, %struct.zoran** %19, align 8
  store %struct.zoran* %20, %struct.zoran** %7, align 8
  %21 = load i32, i32* @BUZ_MAX_WIDTH, align 4
  %22 = add nsw i32 %21, 31
  %23 = sdiv i32 %22, 32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.zoran_fh*, %struct.zoran_fh** %4, align 8
  %25 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 %27, 4
  %29 = load i32, i32* @BUZ_MAX_HEIGHT, align 4
  %30 = mul i32 %28, %29
  %31 = call i32 @memset(i32* %26, i32 -1, i32 %30)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %162, %3
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %165

36:                                               ; preds = %32
  %37 = load %struct.v4l2_clip*, %struct.v4l2_clip** %5, align 8
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %37, i64 %39
  %41 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.v4l2_clip*, %struct.v4l2_clip** %5, align 8
  %45 = load i32, i32* %14, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %44, i64 %46
  %48 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load %struct.v4l2_clip*, %struct.v4l2_clip** %5, align 8
  %52 = load i32, i32* %14, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %51, i64 %53
  %55 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load %struct.v4l2_clip*, %struct.v4l2_clip** %5, align 8
  %59 = load i32, i32* %14, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %58, i64 %60
  %62 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %36
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %67, %36
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %79, %80
  %82 = load %struct.zoran_fh*, %struct.zoran_fh** %4, align 8
  %83 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %81, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %78
  %88 = load %struct.zoran_fh*, %struct.zoran_fh** %4, align 8
  %89 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %87, %78
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %95, %96
  %98 = load %struct.zoran_fh*, %struct.zoran_fh** %4, align 8
  %99 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %97, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load %struct.zoran_fh*, %struct.zoran_fh** %4, align 8
  %105 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %103, %94
  %111 = load i32, i32* %13, align 4
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %162

114:                                              ; preds = %110
  %115 = load i32, i32* %12, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %162

118:                                              ; preds = %114
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %158, %118
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %161

123:                                              ; preds = %119
  %124 = load %struct.zoran_fh*, %struct.zoran_fh** %4, align 8
  %125 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %15, align 4
  %129 = add i32 %127, %128
  %130 = load i32, i32* %8, align 4
  %131 = mul i32 %129, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  store i32* %133, i32** %9, align 8
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %154, %123
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %134
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %16, align 4
  %141 = add i32 %139, %140
  %142 = urem i32 %141, 32
  %143 = shl i32 1, %142
  %144 = xor i32 %143, -1
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %16, align 4
  %148 = add i32 %146, %147
  %149 = udiv i32 %148, 32
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %145, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, %144
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %138
  %155 = load i32, i32* %16, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %16, align 4
  br label %134

157:                                              ; preds = %134
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %15, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %15, align 4
  br label %119

161:                                              ; preds = %119
  br label %162

162:                                              ; preds = %161, %117, %113
  %163 = load i32, i32* %14, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %32

165:                                              ; preds = %32
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
