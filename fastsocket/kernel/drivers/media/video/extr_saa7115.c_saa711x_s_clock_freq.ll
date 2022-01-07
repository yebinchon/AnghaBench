; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_s_clock_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_s_clock_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i32, i32, i32, i64, i64, i32, i32 }

@R_30_AUD_MAST_CLK_CYCLES_PER_FIELD = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"set audio clock freq: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@R_38_CLK_RATIO_AMXCLK_TO_ASCLK = common dso_local global i64 0, align 8
@R_39_CLK_RATIO_ASCLK_TO_ALRCLK = common dso_local global i64 0, align 8
@R_3A_AUD_CLK_GEN_BASIC_SETUP = common dso_local global i64 0, align 8
@R_34_AUD_MAST_CLK_NOMINAL_INC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @saa711x_s_clock_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_s_clock_freq(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa711x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %12)
  store %struct.saa711x_state* %13, %struct.saa711x_state** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %15 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @R_30_AUD_MAST_CLK_CYCLES_PER_FIELD, align 8
  %18 = call i32 @saa711x_has_reg(i32 %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %141

21:                                               ; preds = %2
  %22 = load i32, i32* @debug, align 4
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @v4l2_dbg(i32 1, i32 %22, %struct.v4l2_subdev* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 32000
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 48000
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %141

34:                                               ; preds = %28
  %35 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %36 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @V4L2_STD_525_60, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 5994, i32 5000
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 25600, %43
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %48, 31
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %52 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @do_div(i32 %50, i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %57 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %34
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %63 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = sdiv i32 %65, 16
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %69 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = sdiv i32 %71, 16
  store i32 %72, i32* %8, align 4
  store i32 128, i32* %11, align 4
  %73 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %74 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %80

77:                                               ; preds = %60
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, 64
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %77, %60
  br label %81

81:                                               ; preds = %80, %34
  %82 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %83 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = or i32 %87, 8
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %91 = load i64, i64* @R_38_CLK_RATIO_AMXCLK_TO_ASCLK, align 8
  %92 = call i32 @saa711x_write(%struct.v4l2_subdev* %90, i64 %91, i32 3)
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %94 = load i64, i64* @R_39_CLK_RATIO_ASCLK_TO_ALRCLK, align 8
  %95 = call i32 @saa711x_write(%struct.v4l2_subdev* %93, i64 %94, i32 16)
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %97 = load i64, i64* @R_3A_AUD_CLK_GEN_BASIC_SETUP, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @saa711x_write(%struct.v4l2_subdev* %96, i64 %97, i32 %98)
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %101 = load i64, i64* @R_30_AUD_MAST_CLK_CYCLES_PER_FIELD, align 8
  %102 = load i32, i32* %7, align 4
  %103 = and i32 %102, 255
  %104 = call i32 @saa711x_write(%struct.v4l2_subdev* %100, i64 %101, i32 %103)
  %105 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %106 = load i64, i64* @R_30_AUD_MAST_CLK_CYCLES_PER_FIELD, align 8
  %107 = add nsw i64 %106, 1
  %108 = load i32, i32* %7, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 255
  %111 = call i32 @saa711x_write(%struct.v4l2_subdev* %105, i64 %107, i32 %110)
  %112 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %113 = load i64, i64* @R_30_AUD_MAST_CLK_CYCLES_PER_FIELD, align 8
  %114 = add nsw i64 %113, 2
  %115 = load i32, i32* %7, align 4
  %116 = ashr i32 %115, 16
  %117 = and i32 %116, 3
  %118 = call i32 @saa711x_write(%struct.v4l2_subdev* %112, i64 %114, i32 %117)
  %119 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %120 = load i64, i64* @R_34_AUD_MAST_CLK_NOMINAL_INC, align 8
  %121 = load i32, i32* %8, align 4
  %122 = and i32 %121, 255
  %123 = call i32 @saa711x_write(%struct.v4l2_subdev* %119, i64 %120, i32 %122)
  %124 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %125 = load i64, i64* @R_34_AUD_MAST_CLK_NOMINAL_INC, align 8
  %126 = add nsw i64 %125, 1
  %127 = load i32, i32* %8, align 4
  %128 = ashr i32 %127, 8
  %129 = and i32 %128, 255
  %130 = call i32 @saa711x_write(%struct.v4l2_subdev* %124, i64 %126, i32 %129)
  %131 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %132 = load i64, i64* @R_34_AUD_MAST_CLK_NOMINAL_INC, align 8
  %133 = add nsw i64 %132, 2
  %134 = load i32, i32* %8, align 4
  %135 = ashr i32 %134, 16
  %136 = and i32 %135, 63
  %137 = call i32 @saa711x_write(%struct.v4l2_subdev* %131, i64 %133, i32 %136)
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %140 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %89, %31, %20
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa711x_has_reg(i32, i64) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @saa711x_write(%struct.v4l2_subdev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
