; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_start_preview.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_start_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.saa7134_fh = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"start_preview %dx%d+%d+%d %s field=%s\0A\00", align 1
@v4l2_field_names = common dso_local global i32* null, align 8
@TASK_B = common dso_local global i32 0, align 4
@SAA7134_OFMT_VIDEO_B = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BURST_16 = common dso_local global i64 0, align 8
@SAA7134_RS_CONTROL_BSWAP = common dso_local global i64 0, align 8
@SAA7134_RS_CONTROL_WSWAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, %struct.saa7134_fh*)* @start_preview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_preview(%struct.saa7134_dev* %0, %struct.saa7134_fh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca %struct.saa7134_fh*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store %struct.saa7134_fh* %1, %struct.saa7134_fh** %5, align 8
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %11 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %12 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %11, i32 0, i32 0
  %13 = call i32 @verify_preview(%struct.saa7134_dev* %10, %struct.TYPE_10__* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 0, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %3, align 4
  br label %208

18:                                               ; preds = %2
  %19 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %20 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %24 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %26 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %31 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %36 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %41 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** @v4l2_field_names, align 8
  %51 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %52 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34, i32 %39, i64 %44, i32 %49, i32 %55)
  %57 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %58 = load i32, i32* @TASK_B, align 4
  %59 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %60 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %65 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %70 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @V4L2_FIELD_HAS_BOTH(i64 %71)
  %73 = call i32 @set_size(%struct.saa7134_dev* %57, i32 %58, i32 %63, i32 %68, i64 %72)
  %74 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %75 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %76 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %79 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %82 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @V4L2_FIELD_HAS_BOTH(i64 %83)
  %85 = call i32 @setup_clipping(%struct.saa7134_dev* %74, i32 %77, i32 %80, i64 %84)
  %86 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %87 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %18
  %93 = load i32, i32* @TASK_B, align 4
  %94 = call i32 @SAA7134_DATA_PATH(i32 %93)
  %95 = call i32 @saa_andorb(i32 %94, i32 63, i32 3)
  br label %100

96:                                               ; preds = %18
  %97 = load i32, i32* @TASK_B, align 4
  %98 = call i32 @SAA7134_DATA_PATH(i32 %97)
  %99 = call i32 @saa_andorb(i32 %98, i32 63, i32 1)
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* @SAA7134_OFMT_VIDEO_B, align 4
  %102 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %103 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %102, i32 0, i32 2
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, 32
  %108 = call i32 @saa_writeb(i32 %101, i32 %107)
  %109 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %110 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %6, align 8
  %113 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %114 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %119 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = mul i64 %117, %122
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %6, align 8
  %126 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %127 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %126, i32 0, i32 2
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sdiv i32 %130, 8
  %132 = load %struct.saa7134_fh*, %struct.saa7134_fh** %5, align 8
  %133 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %131, %136
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %6, align 8
  %141 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %142 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %8, align 8
  %146 = load i64, i64* @SAA7134_RS_CONTROL_BURST_16, align 8
  store i64 %146, i64* %7, align 8
  %147 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %148 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %147, i32 0, i32 2
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %100
  %154 = load i64, i64* @SAA7134_RS_CONTROL_BSWAP, align 8
  %155 = load i64, i64* %7, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %7, align 8
  br label %157

157:                                              ; preds = %153, %100
  %158 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %159 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %158, i32 0, i32 2
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i64, i64* @SAA7134_RS_CONTROL_WSWAP, align 8
  %166 = load i64, i64* %7, align 8
  %167 = or i64 %166, %165
  store i64 %167, i64* %7, align 8
  br label %168

168:                                              ; preds = %164, %157
  %169 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %170 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @V4L2_FIELD_HAS_BOTH(i64 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %168
  %175 = call i32 @SAA7134_RS_BA1(i32 1)
  %176 = load i64, i64* %6, align 8
  %177 = call i32 @saa_writel(i32 %175, i64 %176)
  %178 = call i32 @SAA7134_RS_BA2(i32 1)
  %179 = load i64, i64* %6, align 8
  %180 = load i64, i64* %8, align 8
  %181 = add i64 %179, %180
  %182 = call i32 @saa_writel(i32 %178, i64 %181)
  %183 = call i32 @SAA7134_RS_PITCH(i32 1)
  %184 = load i64, i64* %8, align 8
  %185 = mul i64 %184, 2
  %186 = call i32 @saa_writel(i32 %183, i64 %185)
  %187 = call i32 @SAA7134_RS_CONTROL(i32 1)
  %188 = load i64, i64* %7, align 8
  %189 = call i32 @saa_writel(i32 %187, i64 %188)
  br label %203

190:                                              ; preds = %168
  %191 = call i32 @SAA7134_RS_BA1(i32 1)
  %192 = load i64, i64* %6, align 8
  %193 = call i32 @saa_writel(i32 %191, i64 %192)
  %194 = call i32 @SAA7134_RS_BA2(i32 1)
  %195 = load i64, i64* %6, align 8
  %196 = call i32 @saa_writel(i32 %194, i64 %195)
  %197 = call i32 @SAA7134_RS_PITCH(i32 1)
  %198 = load i64, i64* %8, align 8
  %199 = call i32 @saa_writel(i32 %197, i64 %198)
  %200 = call i32 @SAA7134_RS_CONTROL(i32 1)
  %201 = load i64, i64* %7, align 8
  %202 = call i32 @saa_writel(i32 %200, i64 %201)
  br label %203

203:                                              ; preds = %190, %174
  %204 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %205 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %204, i32 0, i32 1
  store i32 1, i32* %205, align 8
  %206 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %207 = call i32 @saa7134_set_dmabits(%struct.saa7134_dev* %206)
  store i32 0, i32* %3, align 4
  br label %208

208:                                              ; preds = %203, %16
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @verify_preview(%struct.saa7134_dev*, %struct.TYPE_10__*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @set_size(%struct.saa7134_dev*, i32, i32, i32, i64) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i64) #1

declare dso_local i32 @setup_clipping(%struct.saa7134_dev*, i32, i32, i64) #1

declare dso_local i32 @saa_andorb(i32, i32, i32) #1

declare dso_local i32 @SAA7134_DATA_PATH(i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @saa_writel(i32, i64) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

declare dso_local i32 @saa7134_set_dmabits(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
