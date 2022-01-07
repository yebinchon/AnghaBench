; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-vbi.c_cx25840_g_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-vbi.c_cx25840_g_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i32**, i32 }
%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32 }

@cx25840_g_sliced_fmt.lcr2vbi = internal constant [16 x i32] [i32 0, i32 130, i32 0, i32 0, i32 128, i32 0, i32 131, i32 0, i32 0, i32 129, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_g_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.cx25840_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %14)
  store %struct.cx25840_state* %15, %struct.cx25840_state** %7, align 8
  %16 = load %struct.cx25840_state*, %struct.cx25840_state** %7, align 8
  %17 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_STD_525_60, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %25 = call i32 @memset(%struct.v4l2_sliced_vbi_format* %24, i32 0, i32 16)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = call i32 @cx25840_read(%struct.i2c_client* %26, i32 1028)
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %161

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %97

34:                                               ; preds = %31
  store i32 7, i32* %9, align 4
  br label %35

35:                                               ; preds = %93, %34
  %36 = load i32, i32* %9, align 4
  %37 = icmp sle i32 %36, 23
  br i1 %37, label %38, label %96

38:                                               ; preds = %35
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 1060, %40
  %42 = sub nsw i32 %41, 7
  %43 = call i32 @cx25840_read(%struct.i2c_client* %39, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* @cx25840_g_sliced_fmt.lcr2vbi, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %48, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, 15
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [16 x i32], [16 x i32]* @cx25840_g_sliced_fmt.lcr2vbi, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %62, i32 0, i32 0
  %64 = load i32**, i32*** %63, align 8
  %65 = getelementptr inbounds i32*, i32** %64, i64 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %61, i32* %69, align 4
  %70 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %78, %87
  %89 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %38
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %35

96:                                               ; preds = %35
  br label %160

97:                                               ; preds = %31
  store i32 10, i32* %9, align 4
  br label %98

98:                                               ; preds = %156, %97
  %99 = load i32, i32* %9, align 4
  %100 = icmp sle i32 %99, 21
  br i1 %100, label %101, label %159

101:                                              ; preds = %98
  %102 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 1060, %103
  %105 = sub nsw i32 %104, 10
  %106 = call i32 @cx25840_read(%struct.i2c_client* %102, i32 %105)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = ashr i32 %107, 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* @cx25840_g_sliced_fmt.lcr2vbi, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %113 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %112, i32 0, i32 0
  %114 = load i32**, i32*** %113, align 8
  %115 = getelementptr inbounds i32*, i32** %114, i64 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %111, i32* %119, align 4
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %120, 15
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* @cx25840_g_sliced_fmt.lcr2vbi, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %126 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %125, i32 0, i32 0
  %127 = load i32**, i32*** %126, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %124, i32* %132, align 4
  %133 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %134 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %133, i32 0, i32 0
  %135 = load i32**, i32*** %134, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %143 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %142, i32 0, i32 0
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 1
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %141, %150
  %152 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %153 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %101
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  br label %98

159:                                              ; preds = %98
  br label %160

160:                                              ; preds = %159, %96
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %30
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(%struct.v4l2_sliced_vbi_format*, i32, i32) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
