; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa717x.c_saa717x_s_mbus_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa717x.c_saa717x_s_mbus_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i64, i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"decoder set size\0A\00", align 1
@V4L2_MBUS_FMT_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@SAA717X_NTSC_WIDTH = common dso_local global i32 0, align 4
@SAA717X_NTSC_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @saa717x_s_mbus_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa717x_s_mbus_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  %9 = load i32, i32* @debug, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call i32 @v4l2_dbg(i32 1, i32 %9, %struct.v4l2_subdev* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_MBUS_FMT_FIXED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %158

20:                                               ; preds = %2
  %21 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 1440
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %158

33:                                               ; preds = %25
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 960
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %158

46:                                               ; preds = %38
  %47 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %48 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @SAA717X_NTSC_WIDTH, align 4
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %53, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %46
  %62 = load i32, i32* @SAA717X_NTSC_WIDTH, align 4
  %63 = mul nsw i32 1024, %62
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %63, %64
  %66 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sdiv i32 %65, %68
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @SAA717X_NTSC_HEIGHT, align 4
  %71 = mul nsw i32 1024, %70
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %71, %74
  store i32 %75, i32* %8, align 4
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @set_h_prescale(%struct.v4l2_subdev* %76, i32 0, i32 %77)
  %79 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @set_h_prescale(%struct.v4l2_subdev* %79, i32 1, i32 %80)
  %82 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 255
  %85 = call i32 @saa717x_write(%struct.v4l2_subdev* %82, i32 108, i32 %84)
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = ashr i32 %87, 8
  %89 = and i32 %88, 255
  %90 = call i32 @saa717x_write(%struct.v4l2_subdev* %86, i32 109, i32 %89)
  %91 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, 255
  %94 = call i32 @saa717x_write(%struct.v4l2_subdev* %91, i32 172, i32 %93)
  %95 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = ashr i32 %96, 8
  %98 = and i32 %97, 255
  %99 = call i32 @saa717x_write(%struct.v4l2_subdev* %95, i32 173, i32 %98)
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @set_v_scale(%struct.v4l2_subdev* %100, i32 0, i32 %101)
  %103 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @set_v_scale(%struct.v4l2_subdev* %103, i32 1, i32 %104)
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %107 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 255
  %111 = call i32 @saa717x_write(%struct.v4l2_subdev* %106, i32 92, i32 %110)
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %113 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = ashr i32 %115, 8
  %117 = and i32 %116, 255
  %118 = call i32 @saa717x_write(%struct.v4l2_subdev* %112, i32 93, i32 %117)
  %119 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %120 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, 255
  %124 = call i32 @saa717x_write(%struct.v4l2_subdev* %119, i32 156, i32 %123)
  %125 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %126 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %127 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 255
  %131 = call i32 @saa717x_write(%struct.v4l2_subdev* %125, i32 157, i32 %130)
  %132 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %133 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %134 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 255
  %137 = call i32 @saa717x_write(%struct.v4l2_subdev* %132, i32 94, i32 %136)
  %138 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %139 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %140 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 8
  %143 = and i32 %142, 255
  %144 = call i32 @saa717x_write(%struct.v4l2_subdev* %138, i32 95, i32 %143)
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %146 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %147 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 255
  %150 = call i32 @saa717x_write(%struct.v4l2_subdev* %145, i32 158, i32 %149)
  %151 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %152 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %153 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 8
  %156 = and i32 %155, 255
  %157 = call i32 @saa717x_write(%struct.v4l2_subdev* %151, i32 159, i32 %156)
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %61, %43, %30, %17
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @set_h_prescale(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @saa717x_write(%struct.v4l2_subdev*, i32, i32) #1

declare dso_local i32 @set_v_scale(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
