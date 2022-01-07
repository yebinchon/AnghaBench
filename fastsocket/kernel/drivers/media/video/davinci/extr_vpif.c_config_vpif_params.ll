; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif.c_config_vpif_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpif.c_config_vpif_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.vpif_params = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.vpif_channel_config_params }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.vpif_channel_config_params = type { i64, i64, i64 }

@vpifregs = common dso_local global %struct.TYPE_8__* null, align 8
@VPIF_CAPTURE_CH_NIP = common dso_local global i32 0, align 4
@VPIF_DISPLAY_CH_NIP = common dso_local global i32 0, align 4
@VPIF_CH_YC_MUX_BIT = common dso_local global i32 0, align 4
@VPIF_CH_INPUT_FIELD_FRAME_BIT = common dso_local global i32 0, align 4
@VPIF_CH_SDR_FMT_BIT = common dso_local global i32 0, align 4
@VPIF_CH_DATA_MODE_BIT = common dso_local global i32 0, align 4
@VPIF_DISPLAY_PIX_EN_BIT = common dso_local global i32 0, align 4
@VPIF_CH_FID_POLARITY_BIT = common dso_local global i32 0, align 4
@VPIF_CH_V_VALID_POLARITY_BIT = common dso_local global i32 0, align 4
@VPIF_CH_H_VALID_POLARITY_BIT = common dso_local global i32 0, align 4
@VPIF_CH_DATA_WIDTH_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpif_params*, i32, i32)* @config_vpif_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_vpif_params(%struct.vpif_params* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vpif_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vpif_channel_config_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vpif_params* %0, %struct.vpif_params** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %15 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %14, i32 0, i32 3
  store %struct.vpif_channel_config_params* %15, %struct.vpif_channel_config_params** %7, align 8
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %130, %3
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %133

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vpifregs, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @VPIF_CAPTURE_CH_NIP, align 4
  store i32 %35, i32* %9, align 4
  br label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @VPIF_DISPLAY_CH_NIP, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %42 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @vpif_wr_bit(i32 %39, i32 %40, i64 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @VPIF_CH_YC_MUX_BIT, align 4
  %47 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %48 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @vpif_wr_bit(i32 %45, i32 %46, i64 %49)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @VPIF_CH_INPUT_FIELD_FRAME_BIT, align 4
  %53 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %54 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @vpif_wr_bit(i32 %51, i32 %52, i64 %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @VPIF_CH_SDR_FMT_BIT, align 4
  %60 = call i32 @vpif_clr_bit(i32 %58, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @VPIF_CH_DATA_MODE_BIT, align 4
  %63 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %64 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @vpif_wr_bit(i32 %61, i32 %62, i64 %65)
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %38
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @VPIF_DISPLAY_PIX_EN_BIT, align 4
  %72 = call i32 @vpif_set_bit(i32 %70, i32 %71)
  br label %118

73:                                               ; preds = %38
  %74 = load %struct.vpif_channel_config_params*, %struct.vpif_channel_config_params** %7, align 8
  %75 = getelementptr inbounds %struct.vpif_channel_config_params, %struct.vpif_channel_config_params* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @VPIF_CH_FID_POLARITY_BIT, align 4
  %81 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %82 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @vpif_wr_bit(i32 %79, i32 %80, i64 %84)
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @VPIF_CH_V_VALID_POLARITY_BIT, align 4
  %88 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %89 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @vpif_wr_bit(i32 %86, i32 %87, i64 %91)
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @VPIF_CH_H_VALID_POLARITY_BIT, align 4
  %95 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %96 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @vpif_wr_bit(i32 %93, i32 %94, i64 %98)
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @regr(i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @VPIF_CH_DATA_WIDTH_BIT, align 4
  %103 = shl i32 -4, %102
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %8, align 4
  %106 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %107 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @VPIF_CH_DATA_WIDTH_BIT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @regw(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %78, %73
  br label %118

118:                                              ; preds = %117, %69
  %119 = load %struct.vpif_params*, %struct.vpif_params** %4, align 8
  %120 = getelementptr inbounds %struct.vpif_params, %struct.vpif_params* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vpifregs, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @regw(i32 %122, i32 %128)
  br label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %21

133:                                              ; preds = %21
  ret void
}

declare dso_local i32 @vpif_wr_bit(i32, i32, i64) #1

declare dso_local i32 @vpif_clr_bit(i32, i32) #1

declare dso_local i32 @vpif_set_bit(i32, i32) #1

declare dso_local i32 @regr(i32) #1

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
