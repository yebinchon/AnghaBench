; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt352.c_mt352_set_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt352.c_mt352_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.mt352_state* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 (%struct.dvb_frontend.2*, i32)* }
%struct.TYPE_7__ = type { i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i8*, i32)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.mt352_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32, i32, i32, i32, i32, i32, i32 }

@mt352_set_parameters.tuner_go = internal global [2 x i8] c"]\01", align 1
@mt352_set_parameters.fsm_go = internal global [2 x i8] c"^\01", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS_GIVEN_1 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @mt352_set_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt352_set_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.mt352_state*, align 8
  %7 = alloca [13 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_ofdm_parameters*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.mt352_state*, %struct.mt352_state** %11, align 8
  store %struct.mt352_state* %12, %struct.mt352_state** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %15, %struct.dvb_ofdm_parameters** %9, align 8
  %16 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %17 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %32 [
    i32 150, label %19
    i32 149, label %22
    i32 148, label %25
    i32 147, label %28
    i32 151, label %31
    i32 146, label %31
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, 128
  store i32 %21, i32* %8, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, 256
  store i32 %24, i32* %8, align 4
  br label %35

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, 384
  store i32 %27, i32* %8, align 4
  br label %35

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, 512
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %2, %2
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %220

35:                                               ; preds = %31, %28, %25, %22, %19
  %36 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %37 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %64 [
    i32 150, label %39
    i32 149, label %42
    i32 148, label %45
    i32 147, label %48
    i32 151, label %51
    i32 146, label %51
    i32 145, label %52
  ]

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, 16
  store i32 %41, i32* %8, align 4
  br label %67

42:                                               ; preds = %35
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, 32
  store i32 %44, i32* %8, align 4
  br label %67

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, 48
  store i32 %47, i32* %8, align 4
  br label %67

48:                                               ; preds = %35
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, 64
  store i32 %50, i32* %8, align 4
  br label %67

51:                                               ; preds = %35, %35
  br label %67

52:                                               ; preds = %35
  %53 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %54 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 136
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %59 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 135
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52
  br label %67

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %35, %63
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %220

67:                                               ; preds = %62, %51, %48, %45, %42, %39
  %68 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %69 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %78 [
    i32 131, label %71
    i32 132, label %72
    i32 134, label %72
    i32 133, label %75
  ]

71:                                               ; preds = %67
  br label %81

72:                                               ; preds = %67, %67
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, 8192
  store i32 %74, i32* %8, align 4
  br label %81

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, 16384
  store i32 %77, i32* %8, align 4
  br label %81

78:                                               ; preds = %67
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %220

81:                                               ; preds = %75, %72, %71
  %82 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %83 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %89 [
    i32 130, label %85
    i32 128, label %85
    i32 129, label %86
  ]

85:                                               ; preds = %81, %81
  br label %92

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %92

89:                                               ; preds = %81
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %220

92:                                               ; preds = %86, %85
  %93 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %94 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %106 [
    i32 143, label %96
    i32 140, label %96
    i32 144, label %97
    i32 141, label %100
    i32 142, label %103
  ]

96:                                               ; preds = %92, %92
  br label %109

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, 4
  store i32 %99, i32* %8, align 4
  br label %109

100:                                              ; preds = %92
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, 8
  store i32 %102, i32* %8, align 4
  br label %109

103:                                              ; preds = %92
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, 12
  store i32 %105, i32* %8, align 4
  br label %109

106:                                              ; preds = %92
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %220

109:                                              ; preds = %103, %100, %97, %96
  %110 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %111 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  switch i32 %112, label %123 [
    i32 136, label %113
    i32 135, label %113
    i32 139, label %114
    i32 138, label %117
    i32 137, label %120
  ]

113:                                              ; preds = %109, %109
  br label %126

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, 1024
  store i32 %116, i32* %8, align 4
  br label %126

117:                                              ; preds = %109
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, 2048
  store i32 %119, i32* %8, align 4
  br label %126

120:                                              ; preds = %109
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, 3072
  store i32 %122, i32* %8, align 4
  br label %126

123:                                              ; preds = %109
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %220

126:                                              ; preds = %120, %117, %114, %113
  %127 = load i8, i8* @TPS_GIVEN_1, align 1
  %128 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  store i8 %127, i8* %128, align 1
  %129 = load i32, i32* %8, align 4
  %130 = call zeroext i8 @msb(i32 %129)
  %131 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 1
  store i8 %130, i8* %131, align 1
  %132 = load i32, i32* %8, align 4
  %133 = call zeroext i8 @lsb(i32 %132)
  %134 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 2
  store i8 %133, i8* %134, align 1
  %135 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 3
  store i8 80, i8* %135, align 1
  %136 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %137 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %9, align 8
  %138 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %141 = getelementptr inbounds i8, i8* %140, i64 4
  %142 = call i32 @mt352_calc_nominal_rate(%struct.mt352_state* %136, i32 %139, i8* %141)
  %143 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %144 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %145 = getelementptr inbounds i8, i8* %144, i64 6
  %146 = call i32 @mt352_calc_input_freq(%struct.mt352_state* %143, i8* %145)
  %147 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %148 = getelementptr inbounds %struct.mt352_state, %struct.mt352_state* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %189

152:                                              ; preds = %126
  %153 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %154 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %156, align 8
  %158 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %157, null
  br i1 %158, label %159, label %183

159:                                              ; preds = %152
  %160 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %161 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %163, align 8
  %165 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %166 = bitcast %struct.dvb_frontend* %165 to %struct.dvb_frontend.1*
  %167 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %168 = call i32 %164(%struct.dvb_frontend.1* %166, %struct.dvb_frontend_parameters* %167)
  %169 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %170 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %171, align 8
  %173 = icmp ne i32 (%struct.dvb_frontend.2*, i32)* %172, null
  br i1 %173, label %174, label %182

174:                                              ; preds = %159
  %175 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %176 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32 (%struct.dvb_frontend.2*, i32)*, i32 (%struct.dvb_frontend.2*, i32)** %177, align 8
  %179 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %180 = bitcast %struct.dvb_frontend* %179 to %struct.dvb_frontend.2*
  %181 = call i32 %178(%struct.dvb_frontend.2* %180, i32 0)
  br label %182

182:                                              ; preds = %174, %159
  br label %183

183:                                              ; preds = %182, %152
  %184 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %185 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %186 = call i32 @_mt352_write(%struct.dvb_frontend* %184, i8* %185, i32 8)
  %187 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %188 = call i32 @_mt352_write(%struct.dvb_frontend* %187, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mt352_set_parameters.fsm_go, i64 0, i64 0), i32 2)
  br label %219

189:                                              ; preds = %126
  %190 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %191 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i8*, i32)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i8*, i32)** %193, align 8
  %195 = icmp ne i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i8*, i32)* %194, null
  br i1 %195, label %196, label %218

196:                                              ; preds = %189
  %197 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %198 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i8*, i32)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*, i8*, i32)** %200, align 8
  %202 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %203 = bitcast %struct.dvb_frontend* %202 to %struct.dvb_frontend.0*
  %204 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %205 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %206 = getelementptr inbounds i8, i8* %205, i64 8
  %207 = call i32 %201(%struct.dvb_frontend.0* %203, %struct.dvb_frontend_parameters* %204, i8* %206, i32 5)
  %208 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 8
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = shl i32 %210, 1
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %208, align 1
  %213 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %214 = getelementptr inbounds [13 x i8], [13 x i8]* %7, i64 0, i64 0
  %215 = call i32 @_mt352_write(%struct.dvb_frontend* %213, i8* %214, i32 13)
  %216 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %217 = call i32 @_mt352_write(%struct.dvb_frontend* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mt352_set_parameters.tuner_go, i64 0, i64 0), i32 2)
  br label %218

218:                                              ; preds = %196, %189
  br label %219

219:                                              ; preds = %218, %183
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %219, %123, %106, %89, %78, %64, %32
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local zeroext i8 @msb(i32) #1

declare dso_local zeroext i8 @lsb(i32) #1

declare dso_local i32 @mt352_calc_nominal_rate(%struct.mt352_state*, i32, i8*) #1

declare dso_local i32 @mt352_calc_input_freq(%struct.mt352_state*, i8*) #1

declare dso_local i32 @_mt352_write(%struct.dvb_frontend*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
