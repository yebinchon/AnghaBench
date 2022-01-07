; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_s_mbus_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-core.c_cx25840_s_mbus_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32 }
%struct.cx25840_state = type { i32 }
%struct.i2c_client = type { i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_MBUS_FMT_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%dx%d is not a valid size!\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@cx25840_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"decoder set size %dx%d -> scale  %ux%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @cx25840_s_mbus_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_s_mbus_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.cx25840_state*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %16 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %15)
  store %struct.cx25840_state* %16, %struct.cx25840_state** %6, align 8
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %18 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %7, align 8
  %19 = load %struct.cx25840_state*, %struct.cx25840_state** %6, align 8
  %20 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_STD_525_60, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %14, align 4
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @V4L2_MBUS_FMT_FIXED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %175

35:                                               ; preds = %2
  %36 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %37 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %43 = call i32 @cx25840_read(%struct.i2c_client* %42, i32 1142)
  %44 = and i32 %43, 63
  %45 = shl i32 %44, 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %47 = call i32 @cx25840_read(%struct.i2c_client* %46, i32 1141)
  %48 = and i32 %47, 240
  %49 = ashr i32 %48, 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %53 = call i32 @cx25840_read(%struct.i2c_client* %52, i32 1138)
  %54 = and i32 %53, 63
  %55 = shl i32 %54, 4
  store i32 %55, i32* %11, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %57 = call i32 @cx25840_read(%struct.i2c_client* %56, i32 1137)
  %58 = and i32 %57, 240
  %59 = ashr i32 %58, 4
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 4, i32 7
  %69 = add nsw i32 %64, %68
  store i32 %69, i32* %13, align 4
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 16
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %91, label %76

76:                                               ; preds = %35
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %83, 8
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87, %82, %76, %35
  %92 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %93 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %97 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @v4l_err(%struct.i2c_client* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %98)
  %100 = load i32, i32* @ERANGE, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %175

102:                                              ; preds = %87
  %103 = load i32, i32* %11, align 4
  %104 = mul nsw i32 %103, 1048576
  %105 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %106 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sdiv i32 %104, %107
  %109 = sub nsw i32 %108, 1048576
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %10, align 4
  %111 = mul nsw i32 %110, 512
  %112 = load i32, i32* %13, align 4
  %113 = sdiv i32 %111, %112
  %114 = sub nsw i32 %113, 512
  %115 = sub nsw i32 65536, %114
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 8191
  store i32 %117, i32* %9, align 4
  %118 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %119 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp sge i32 %120, 385
  br i1 %121, label %122, label %123

122:                                              ; preds = %102
  store i32 0, i32* %12, align 4
  br label %138

123:                                              ; preds = %102
  %124 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %125 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 192
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 1, i32* %12, align 4
  br label %137

129:                                              ; preds = %123
  %130 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %131 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %132, 96
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 2, i32* %12, align 4
  br label %136

135:                                              ; preds = %129
  store i32 3, i32* %12, align 4
  br label %136

136:                                              ; preds = %135, %134
  br label %137

137:                                              ; preds = %136, %128
  br label %138

138:                                              ; preds = %137, %122
  %139 = load i32, i32* @cx25840_debug, align 4
  %140 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %141 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %142 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @v4l_dbg(i32 1, i32 %139, %struct.i2c_client* %140, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %151 = load i32, i32* %8, align 4
  %152 = and i32 %151, 255
  %153 = call i32 @cx25840_write(%struct.i2c_client* %150, i32 1048, i32 %152)
  %154 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %155 = load i32, i32* %8, align 4
  %156 = ashr i32 %155, 8
  %157 = and i32 %156, 255
  %158 = call i32 @cx25840_write(%struct.i2c_client* %154, i32 1049, i32 %157)
  %159 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = ashr i32 %160, 16
  %162 = call i32 @cx25840_write(%struct.i2c_client* %159, i32 1050, i32 %161)
  %163 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %164 = load i32, i32* %9, align 4
  %165 = and i32 %164, 255
  %166 = call i32 @cx25840_write(%struct.i2c_client* %163, i32 1052, i32 %165)
  %167 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %168 = load i32, i32* %9, align 4
  %169 = ashr i32 %168, 8
  %170 = call i32 @cx25840_write(%struct.i2c_client* %167, i32 1053, i32 %169)
  %171 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %172 = load i32, i32* %12, align 4
  %173 = or i32 8, %172
  %174 = call i32 @cx25840_write(%struct.i2c_client* %171, i32 1054, i32 %173)
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %138, %91, %32
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
