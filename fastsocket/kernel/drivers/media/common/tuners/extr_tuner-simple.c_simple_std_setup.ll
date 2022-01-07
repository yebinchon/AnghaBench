; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_std_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_std_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, i64, %struct.tuner_i2c_props }
%struct.tuner_i2c_props = type { i32 }
%struct.analog_parameters = type { i32 }

@V4L2_STD_SECAM_L = common dso_local global i32 0, align 4
@PHILIPS_MF_SET_STD_L = common dso_local global i32 0, align 4
@V4L2_STD_SECAM_LC = common dso_local global i32 0, align 4
@PHILIPS_MF_SET_STD_LC = common dso_local global i32 0, align 4
@PHILIPS_MF_SET_STD_BG = common dso_local global i32 0, align 4
@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@TEMIC_SET_PAL_BG = common dso_local global i32 0, align 4
@V4L2_STD_PAL_I = common dso_local global i32 0, align 4
@TEMIC_SET_PAL_I = common dso_local global i32 0, align 4
@V4L2_STD_PAL_DK = common dso_local global i32 0, align 4
@TEMIC_SET_PAL_DK = common dso_local global i32 0, align 4
@TEMIC_SET_PAL_L = common dso_local global i32 0, align 4
@PHILIPS_SET_PAL_BGDK = common dso_local global i32 0, align 4
@PHILIPS_SET_PAL_I = common dso_local global i32 0, align 4
@PHILIPS_SET_PAL_L = common dso_local global i32 0, align 4
@V4L2_STD_ATSC = common dso_local global i32 0, align 4
@TUNER_CHARGE_PUMP = common dso_local global i32 0, align 4
@__const.simple_std_setup.buffer = private unnamed_addr constant [4 x i32] [i32 20, i32 0, i32 23, i32 0], align 16
@.str = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 2)\0A\00", align 1
@atv_input = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.analog_parameters*, i32*, i32*)* @simple_std_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_std_setup(%struct.dvb_frontend* %0, %struct.analog_parameters* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.analog_parameters*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tuner_simple_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tuner_i2c_props, align 4
  %12 = alloca [4 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.analog_parameters* %1, %struct.analog_parameters** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 0
  %15 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %14, align 8
  store %struct.tuner_simple_priv* %15, %struct.tuner_simple_priv** %9, align 8
  %16 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %9, align 8
  %17 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %210 [
    i32 130, label %19
    i32 128, label %53
    i32 131, label %108
    i32 132, label %152
    i32 133, label %167
    i32 129, label %172
  ]

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -4
  store i32 %22, i32* %20, align 4
  %23 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %24 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @PHILIPS_MF_SET_STD_L, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %52

34:                                               ; preds = %19
  %35 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %36 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @V4L2_STD_SECAM_LC, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @PHILIPS_MF_SET_STD_LC, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  br label %51

46:                                               ; preds = %34
  %47 = load i32, i32* @PHILIPS_MF_SET_STD_BG, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %29
  br label %210

53:                                               ; preds = %4
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -16
  store i32 %56, i32* %54, align 4
  %57 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %58 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load i32, i32* @TEMIC_SET_PAL_BG, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  br label %107

68:                                               ; preds = %53
  %69 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %70 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32, i32* @TEMIC_SET_PAL_I, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %106

80:                                               ; preds = %68
  %81 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %82 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i32, i32* @TEMIC_SET_PAL_DK, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %105

92:                                               ; preds = %80
  %93 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %94 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32, i32* @TEMIC_SET_PAL_L, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %92
  br label %105

105:                                              ; preds = %104, %87
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106, %63
  br label %210

108:                                              ; preds = %4
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, -16
  store i32 %111, i32* %109, align 4
  %112 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %113 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  %116 = load i32, i32* @V4L2_STD_PAL_DK, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %108
  %121 = load i32, i32* @PHILIPS_SET_PAL_BGDK, align 4
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %121
  store i32 %124, i32* %122, align 4
  br label %151

125:                                              ; preds = %108
  %126 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %127 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @V4L2_STD_PAL_I, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i32, i32* @PHILIPS_SET_PAL_I, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %133
  store i32 %136, i32* %134, align 4
  br label %150

137:                                              ; preds = %125
  %138 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %139 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @V4L2_STD_SECAM_L, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i32, i32* @PHILIPS_SET_PAL_L, align 4
  %146 = load i32*, i32** %8, align 8
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %145
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %144, %137
  br label %150

150:                                              ; preds = %149, %132
  br label %151

151:                                              ; preds = %150, %120
  br label %210

152:                                              ; preds = %4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, -4
  store i32 %155, i32* %153, align 4
  %156 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %157 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @V4L2_STD_ATSC, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %152
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, 2
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %162, %152
  br label %210

167:                                              ; preds = %4
  %168 = load i32, i32* @TUNER_CHARGE_PUMP, align 4
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %168
  store i32 %171, i32* %169, align 4
  br label %210

172:                                              ; preds = %4
  %173 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %9, align 8
  %174 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %173, i32 0, i32 2
  %175 = bitcast %struct.tuner_i2c_props* %11 to i8*
  %176 = bitcast %struct.tuner_i2c_props* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 8 %176, i64 4, i1 false)
  %177 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %177, i8* align 16 bitcast ([4 x i32]* @__const.simple_std_setup.buffer to i8*), i64 16, i1 false)
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, -65
  store i32 %180, i32* %178, align 4
  %181 = load %struct.analog_parameters*, %struct.analog_parameters** %6, align 8
  %182 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @V4L2_STD_ATSC, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %172
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, 64
  store i32 %190, i32* %188, align 4
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 4, i32* %191, align 4
  br label %192

192:                                              ; preds = %187, %172
  %193 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %11, i32 0, i32 0
  store i32 10, i32* %193, align 4
  %194 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %195 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %11, i32* %194, i32 2)
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp ne i32 2, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %198, %192
  %202 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %203 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %11, i32* %202, i32 2)
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp ne i32 2, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %207)
  br label %209

209:                                              ; preds = %206, %201
  br label %210

210:                                              ; preds = %4, %209, %167, %166, %151, %107, %52
  %211 = load i64*, i64** @atv_input, align 8
  %212 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %9, align 8
  %213 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds i64, i64* %211, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %210
  %219 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %220 = load i32*, i32** %7, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = load i64*, i64** @atv_input, align 8
  %223 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %9, align 8
  %224 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds i64, i64* %222, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @simple_set_rf_input(%struct.dvb_frontend* %219, i32* %220, i32* %221, i64 %227)
  br label %229

229:                                              ; preds = %218, %210
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props*, i32*, i32) #2

declare dso_local i32 @tuner_warn(i8*, i32) #2

declare dso_local i32 @simple_set_rf_input(%struct.dvb_frontend*, i32*, i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
