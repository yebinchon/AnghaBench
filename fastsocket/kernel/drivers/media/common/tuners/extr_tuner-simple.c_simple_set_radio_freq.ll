; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_set_radio_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_set_radio_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, %struct.TYPE_4__, %struct.tunertype* }
%struct.TYPE_4__ = type { i32 }
%struct.tunertype = type { i32, %struct.tuner_params* }
%struct.tuner_params = type { i64, i32, i64, i64, i32, i64, i32, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.analog_parameters = type { i32 }
%struct.v4l2_priv_tun_config = type { i32*, i32 }

@TUNER_PARAM_TYPE_RADIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unsupported radio_if value %d\0A\00", align 1
@TUNER_RATIO_MASK = common dso_local global i32 0, align 4
@TUNER_RATIO_SELECT_50 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"radio 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@TUNER_TDA9887 = common dso_local global i32 0, align 4
@TDA9887_PORT1_ACTIVE = common dso_local global i32 0, align 4
@TDA9887_PORT2_ACTIVE = common dso_local global i32 0, align 4
@TDA9887_INTERCARRIER = common dso_local global i32 0, align 4
@TDA9887_GAIN_NORMAL = common dso_local global i32 0, align 4
@TDA9887_RIF_41_3 = common dso_local global i32 0, align 4
@TUNER_SET_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 4)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @simple_set_radio_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_set_radio_freq(%struct.dvb_frontend* %0, %struct.analog_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.analog_parameters*, align 8
  %6 = alloca %struct.tunertype*, align 8
  %7 = alloca %struct.tuner_simple_priv*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tuner_params*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.v4l2_priv_tun_config, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %17, align 8
  store %struct.tuner_simple_priv* %18, %struct.tuner_simple_priv** %7, align 8
  %19 = load %struct.analog_parameters*, %struct.analog_parameters** %5, align 8
  %20 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %23 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %22, i32 0, i32 2
  %24 = load %struct.tunertype*, %struct.tunertype** %23, align 8
  store %struct.tunertype* %24, %struct.tunertype** %6, align 8
  %25 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %26 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %45, %2
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %34 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %33, i32 0, i32 1
  %35 = load %struct.tuner_params*, %struct.tuner_params** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %35, i64 %37
  %39 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TUNER_PARAM_TYPE_RADIO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %48

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %11, align 4
  br label %29

48:                                               ; preds = %43, %29
  %49 = load %struct.tunertype*, %struct.tunertype** %6, align 8
  %50 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %49, i32 0, i32 1
  %51 = load %struct.tuner_params*, %struct.tuner_params** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %51, i64 %53
  store %struct.tuner_params* %54, %struct.tuner_params** %12, align 8
  %55 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %56 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %67 [
    i32 0, label %58
    i32 1, label %61
    i32 2, label %64
  ]

58:                                               ; preds = %48
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %59, 171200
  store i32 %60, i32* %13, align 4
  br label %72

61:                                               ; preds = %48
  %62 = load i32, i32* %13, align 4
  %63 = add i32 %62, 532800
  store i32 %63, i32* %13, align 4
  br label %72

64:                                               ; preds = %48
  %65 = load i32, i32* %13, align 4
  %66 = add i32 %65, 660800
  store i32 %66, i32* %13, align 4
  br label %72

67:                                               ; preds = %48
  %68 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %69 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @tuner_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %70)
  store i32 0, i32* %3, align 4
  br label %216

72:                                               ; preds = %64, %61, %58
  %73 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %74 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %73, i32 0, i32 10
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @TUNER_RATIO_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = load i32, i32* @TUNER_RATIO_SELECT_50, align 4
  %83 = or i32 %81, %82
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %83, i32* %84, align 8
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %87 = call i32 @simple_radio_bandswitch(%struct.dvb_frontend* %85, i32* %86)
  %88 = load i32, i32* %13, align 4
  %89 = add i32 %88, 400
  %90 = udiv i32 %89, 800
  store i32 %90, i32* %9, align 4
  %91 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %92 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %91, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %72
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %98 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %103, i32* %104, align 16
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 127
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %110, i32* %111, align 8
  %112 = load i32, i32* %9, align 4
  %113 = and i32 %112, 255
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %113, i32* %114, align 4
  br label %123

115:                                              ; preds = %95, %72
  %116 = load i32, i32* %9, align 4
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 127
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %118, i32* %119, align 16
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 255
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %115, %101
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %125 = load i32, i32* %124, align 16
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @tuner_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %127, i32 %129, i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %135 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %137 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %136, i32 0, i32 8
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %205

140:                                              ; preds = %123
  store i32 0, i32* %14, align 4
  %141 = load i32, i32* @TUNER_TDA9887, align 4
  %142 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %15, i32 0, i32 1
  store i32 %141, i32* %142, align 8
  %143 = getelementptr inbounds %struct.v4l2_priv_tun_config, %struct.v4l2_priv_tun_config* %15, i32 0, i32 0
  store i32* %14, i32** %143, align 8
  %144 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %145 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %140
  %149 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %150 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* @TDA9887_PORT1_ACTIVE, align 4
  %155 = load i32, i32* %14, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %153, %148, %140
  %158 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %159 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %164 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @TDA9887_PORT2_ACTIVE, align 4
  %169 = load i32, i32* %14, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %167, %162, %157
  %172 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %173 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = load i32, i32* @TDA9887_INTERCARRIER, align 4
  %178 = load i32, i32* %14, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %176, %171
  %181 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %182 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load i32, i32* @TDA9887_GAIN_NORMAL, align 4
  %187 = load i32, i32* %14, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %14, align 4
  br label %189

189:                                              ; preds = %185, %180
  %190 = load %struct.tuner_params*, %struct.tuner_params** %12, align 8
  %191 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = load i32, i32* @TDA9887_RIF_41_3, align 4
  %196 = load i32, i32* %14, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %14, align 4
  br label %198

198:                                              ; preds = %194, %189
  %199 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %200 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @TUNER_SET_CONFIG, align 4
  %204 = call i32 @i2c_clients_command(i32 %202, i32 %203, %struct.v4l2_priv_tun_config* %15)
  br label %205

205:                                              ; preds = %198, %123
  %206 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %207 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %206, i32 0, i32 1
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %209 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_4__* %207, i32* %208, i32 4)
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 4, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %212, %205
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %67
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @tuner_warn(i8*, i32) #1

declare dso_local i32 @simple_radio_bandswitch(%struct.dvb_frontend*, i32*) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_clients_command(i32, i32, %struct.v4l2_priv_tun_config*) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
