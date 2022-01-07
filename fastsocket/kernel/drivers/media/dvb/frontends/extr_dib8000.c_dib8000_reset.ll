; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, %struct.TYPE_4__, i64, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error : dib8000 MA not supported\00", align 1
@DIB8000M_POWER_ALL = common dso_local global i32 0, align 4
@DIBX000_VBG_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"using standard PAD-drive-settings, please adjust settings in config-struct to be optimal.\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GPIO reset was not successful.\00", align 1
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"OUTPUT_MODE could not be resetted.\00", align 1
@dib8000_defaults = common dso_local global i32* null, align 8
@DIBX000_SLOW_ADC_ON = common dso_local global i32 0, align 4
@DIBX000_SLOW_ADC_OFF = common dso_local global i32 0, align 4
@DIB8000M_POWER_INTERFACE_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_reset(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  store %struct.dib8000_state* %10, %struct.dib8000_state** %4, align 8
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %12 = call i32 @dib8000_write_word(%struct.dib8000_state* %11, i32 1287, i32 3)
  %13 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %14 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %13, i32 0, i32 5
  %15 = call i32 @dib8000_identify(i32* %14)
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %17 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %173

22:                                               ; preds = %1
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %24 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 32768
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %31 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %30, i32 0, i32 4
  %32 = call i32 @dibx000_reset_i2c_master(i32* %31)
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %34 = load i32, i32* @DIB8000M_POWER_ALL, align 4
  %35 = call i32 @dib8000_set_power_mode(%struct.dib8000_state* %33, i32 %34)
  %36 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %37 = load i32, i32* @DIBX000_VBG_ENABLE, align 4
  %38 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %36, i32 %37)
  %39 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %40 = call i32 @dib8000_write_word(%struct.dib8000_state* %39, i32 770, i32 65535)
  %41 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %42 = call i32 @dib8000_write_word(%struct.dib8000_state* %41, i32 771, i32 65535)
  %43 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %44 = call i32 @dib8000_write_word(%struct.dib8000_state* %43, i32 772, i32 65532)
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %46 = call i32 @dib8000_write_word(%struct.dib8000_state* %45, i32 898, i32 12)
  %47 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %48 = call i32 @dib8000_write_word(%struct.dib8000_state* %47, i32 1280, i32 77)
  %49 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %50 = call i32 @dib8000_write_word(%struct.dib8000_state* %49, i32 1281, i32 12)
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %52 = call i32 @dib8000_write_word(%struct.dib8000_state* %51, i32 770, i32 0)
  %53 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %54 = call i32 @dib8000_write_word(%struct.dib8000_state* %53, i32 771, i32 0)
  %55 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %56 = call i32 @dib8000_write_word(%struct.dib8000_state* %55, i32 772, i32 0)
  %57 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %58 = call i32 @dib8000_write_word(%struct.dib8000_state* %57, i32 898, i32 4)
  %59 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %60 = call i32 @dib8000_write_word(%struct.dib8000_state* %59, i32 1280, i32 0)
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %62 = call i32 @dib8000_write_word(%struct.dib8000_state* %61, i32 1281, i32 0)
  %63 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %64 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %29
  %69 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %70 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %71 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dib8000_write_word(%struct.dib8000_state* %69, i32 906, i32 %73)
  br label %79

75:                                               ; preds = %29
  %76 = call i32 @dprintk(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %78 = call i32 @dib8000_write_word(%struct.dib8000_state* %77, i32 906, i32 11672)
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %81 = call i32 @dib8000_reset_pll(%struct.dib8000_state* %80)
  %82 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %83 = call i64 @dib8000_reset_gpio(%struct.dib8000_state* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %79
  %88 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %89 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %90 = call i64 @dib8000_set_output_mode(%struct.dib8000_state* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = call i32 @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %87
  %95 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %96 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %95, i32 0, i32 3
  store i32* null, i32** %96, align 8
  %97 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %98 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %94
  %105 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %106 = call i32 @dib8000_write_word(%struct.dib8000_state* %105, i32 40, i32 1877)
  br label %110

107:                                              ; preds = %94
  %108 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %109 = call i32 @dib8000_write_word(%struct.dib8000_state* %108, i32 40, i32 8021)
  br label %110

110:                                              ; preds = %107, %104
  store i32 0, i32* %5, align 4
  %111 = load i32*, i32** @dib8000_defaults, align 8
  store i32* %111, i32** %7, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %7, align 8
  %114 = load i32, i32* %112, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %135, %110
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %115
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %7, align 8
  %121 = load i32, i32* %119, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %131, %118
  %123 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %7, align 8
  %127 = load i32, i32* %125, align 4
  %128 = call i32 @dib8000_write_word(%struct.dib8000_state* %123, i32 %124, i32 %127)
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %122
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %122, label %135

135:                                              ; preds = %131
  %136 = load i32*, i32** %7, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %7, align 8
  %138 = load i32, i32* %136, align 4
  store i32 %138, i32* %5, align 4
  br label %115

139:                                              ; preds = %115
  %140 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %141 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %140, i32 0, i32 2
  store i64 0, i64* %141, align 8
  %142 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %143 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %139
  %148 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %149 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %150 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @dib8000_write_word(%struct.dib8000_state* %148, i32 903, i32 %152)
  br label %154

154:                                              ; preds = %147, %139
  %155 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %156 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %157 = call i32 @dib8000_read_word(%struct.dib8000_state* %156, i32 1285)
  %158 = and i32 %157, -3
  %159 = call i32 @dib8000_write_word(%struct.dib8000_state* %155, i32 1285, i32 %158)
  %160 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %161 = call i32 @dib8000_set_bandwidth(%struct.dib8000_state* %160, i32 6000)
  %162 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %163 = load i32, i32* @DIBX000_SLOW_ADC_ON, align 4
  %164 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %162, i32 %163)
  %165 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %166 = call i32 @dib8000_sad_calib(%struct.dib8000_state* %165)
  %167 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %168 = load i32, i32* @DIBX000_SLOW_ADC_OFF, align 4
  %169 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %167, i32 %168)
  %170 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %171 = load i32, i32* @DIB8000M_POWER_INTERFACE_ONLY, align 4
  %172 = call i32 @dib8000_set_power_mode(%struct.dib8000_state* %170, i32 %171)
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %154, %19
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_identify(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dibx000_reset_i2c_master(i32*) #1

declare dso_local i32 @dib8000_set_power_mode(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_adc_state(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_reset_pll(%struct.dib8000_state*) #1

declare dso_local i64 @dib8000_reset_gpio(%struct.dib8000_state*) #1

declare dso_local i64 @dib8000_set_output_mode(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_bandwidth(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_sad_calib(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
