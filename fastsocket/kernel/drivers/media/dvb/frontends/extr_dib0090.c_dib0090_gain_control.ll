; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_gain_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib0090.c_dib0090_gain_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i64, %struct.dib0090_state* }
%struct.dib0090_state = type { i32, i64, i32, i32*, i32, i32*, i64, i32, i64, %struct.TYPE_8__*, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { {}* }

@CT_AGC_START = common dso_local global i32 0, align 4
@rf_ramp_uhf = common dso_local global i32 0, align 4
@bb_ramp_boost = common dso_local global i32 0, align 4
@WBD_ALPHA = common dso_local global i32 0, align 4
@GAIN_ALPHA = common dso_local global i32 0, align 4
@CT_AGC_STEP_0 = common dso_local global i32 0, align 4
@CT_AGC_STEP_1 = common dso_local global i32 0, align 4
@ADC_TARGET = common dso_local global i64 0, align 8
@CT_AGC_STOP = common dso_local global i32 0, align 4
@BAND_CBAND = common dso_local global i64 0, align 8
@BAND_SBAND = common dso_local global i64 0, align 8
@BAND_VHF = common dso_local global i64 0, align 8
@QAM_16 = common dso_local global i64 0, align 8
@QAM_64 = common dso_local global i64 0, align 8
@STANDARD_DAB = common dso_local global i64 0, align 8
@STANDARD_DVBT = common dso_local global i64 0, align 8
@SYS_ISDBT = common dso_local global i64 0, align 8
@rf_ramp_cband = common dso_local global i32 0, align 4
@rf_ramp_sband = common dso_local global i32 0, align 4
@rf_ramp_vhf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0090_gain_control(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib0090_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.dib0090_state*, %struct.dib0090_state** %13, align 8
  store %struct.dib0090_state* %14, %struct.dib0090_state** %3, align 8
  %15 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %16 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %15, i32 0, i32 0
  store i32* %16, i32** %4, align 8
  store i32 10, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i32 1, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CT_AGC_START, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %1
  %22 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %23 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %22, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %25 = call i32 @dib0090_write_reg(%struct.dib0090_state* %24, i32 4, i32 0)
  %26 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %27 = load i32, i32* @rf_ramp_uhf, align 4
  %28 = call i32 @dib0090_set_rframp(%struct.dib0090_state* %26, i32 %27)
  %29 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %30 = load i32, i32* @bb_ramp_boost, align 4
  %31 = call i32 @dib0090_set_bbramp(%struct.dib0090_state* %29, i32 %30)
  %32 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %33 = call i32 @dib0090_write_reg(%struct.dib0090_state* %32, i32 50, i32 0)
  %34 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %35 = call i32 @dib0090_write_reg(%struct.dib0090_state* %34, i32 57, i32 0)
  %36 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %37 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %38 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dib0090_wbd_target(%struct.dib0090_state* %36, i32 %39)
  %41 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %42 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WBD_ALPHA, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %49 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %51 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %56 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %54, %59
  %61 = sdiv i32 %60, 2
  %62 = load i32, i32* @GAIN_ALPHA, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %65 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @CT_AGC_STEP_0, align 4
  %67 = load i32*, i32** %4, align 8
  store i32 %66, i32* %67, align 4
  br label %147

68:                                               ; preds = %1
  %69 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %70 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %146, label %73

73:                                               ; preds = %68
  %74 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %75 = call i64 @dib0090_read_reg(%struct.dib0090_state* %74, i32 29)
  store i64 %75, i64* %6, align 8
  %76 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i64 @dib0090_wbd_to_db(%struct.dib0090_state* %76, i64 %77)
  store i64 %78, i64* %10, align 8
  %79 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %80 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %79, i32 0, i32 6
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = sub nsw i64 %81, %82
  store i64 %83, i64* %8, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CT_AGC_STEP_0, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %73
  %89 = load i64, i64* %8, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %93 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %102

97:                                               ; preds = %91, %88
  %98 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %99 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %98, i32 0, i32 10
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* @CT_AGC_STEP_1, align 4
  %101 = load i32*, i32** %4, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %96
  br label %145

103:                                              ; preds = %73
  %104 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %105 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %104, i32 0, i32 11
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = bitcast {}** %107 to i32 (%struct.dvb_frontend*)**
  %109 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %108, align 8
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %111 = call i32 %109(%struct.dvb_frontend* %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = mul nsw i32 %112, 355774
  %114 = add nsw i32 %113, 1048576
  %115 = ashr i32 %114, 21
  store i32 %115, i32* %11, align 4
  %116 = load i64, i64* @ADC_TARGET, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %9, align 8
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CT_AGC_STEP_1, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %103
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @ABS(i64 %126)
  %128 = icmp slt i32 %127, 50
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %131 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %130, i32 0, i32 10
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, 1
  store i64 %133, i64* %131, align 8
  %134 = icmp sgt i64 %132, 5
  br i1 %134, label %135, label %142

135:                                              ; preds = %129, %125
  %136 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %137 = call i32 @dib0090_write_reg(%struct.dib0090_state* %136, i32 2, i32 39328)
  %138 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %139 = call i32 @dib0090_write_reg(%struct.dib0090_state* %138, i32 4, i32 1)
  %140 = load i32, i32* @CT_AGC_STOP, align 4
  %141 = load i32*, i32** %4, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %135, %129
  br label %144

143:                                              ; preds = %103
  store i32 100, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %143, %142
  br label %145

145:                                              ; preds = %144, %102
  br label %146

146:                                              ; preds = %145, %68
  br label %147

147:                                              ; preds = %146, %21
  %148 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %149 = getelementptr inbounds %struct.dib0090_state, %struct.dib0090_state* %148, i32 0, i32 8
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %147
  %153 = load %struct.dib0090_state*, %struct.dib0090_state** %3, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* %8, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @dib0090_gain_apply(%struct.dib0090_state* %153, i64 %154, i64 %155, i32 %156)
  br label %158

158:                                              ; preds = %152, %147
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i32 @dib0090_set_rframp(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_set_bbramp(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dib0090_wbd_target(%struct.dib0090_state*, i32) #1

declare dso_local i64 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

declare dso_local i64 @dib0090_wbd_to_db(%struct.dib0090_state*, i64) #1

declare dso_local i32 @ABS(i64) #1

declare dso_local i32 @dib0090_gain_apply(%struct.dib0090_state*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
