; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt352.c_mt352_get_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt352.c_mt352_get_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mt352_state* }
%struct.mt352_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32, i32, i32, i32, i32, i32, i32 }

@mt352_get_parameters.tps_fec_to_api = internal constant [8 x i32] [i32 133, i32 132, i32 131, i32 130, i32 129, i32 128, i32 128, i32 128], align 16
@EINVAL = common dso_local global i32 0, align 4
@TPS_RECEIVED_1 = common dso_local global i32 0, align 4
@TPS_RECEIVED_0 = common dso_local global i32 0, align 4
@CHAN_START_1 = common dso_local global i32 0, align 4
@CHAN_START_0 = common dso_local global i32 0, align 4
@TRL_NOMINAL_RATE_1 = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@QAM_AUTO = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_AUTO = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@HIERARCHY_1 = common dso_local global i32 0, align 4
@HIERARCHY_2 = common dso_local global i32 0, align 4
@HIERARCHY_4 = common dso_local global i32 0, align 4
@HIERARCHY_AUTO = common dso_local global i32 0, align 4
@IF_FREQUENCYx6 = common dso_local global i32 0, align 4
@BANDWIDTH_8_MHZ = common dso_local global i32 0, align 4
@BANDWIDTH_7_MHZ = common dso_local global i32 0, align 4
@BANDWIDTH_6_MHZ = common dso_local global i32 0, align 4
@STATUS_2 = common dso_local global i32 0, align 4
@INVERSION_OFF = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @mt352_get_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt352_get_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.mt352_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dvb_ofdm_parameters*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.mt352_state*, %struct.mt352_state** %12, align 8
  store %struct.mt352_state* %13, %struct.mt352_state** %6, align 8
  %14 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %16, %struct.dvb_ofdm_parameters** %10, align 8
  %17 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %18 = call i32 @mt352_read_register(%struct.mt352_state* %17, i32 0)
  %19 = and i32 %18, 192
  %20 = icmp ne i32 %19, 192
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %180

24:                                               ; preds = %2
  %25 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %26 = load i32, i32* @TPS_RECEIVED_1, align 4
  %27 = call i32 @mt352_read_register(%struct.mt352_state* %25, i32 %26)
  %28 = shl i32 %27, 8
  %29 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %30 = load i32, i32* @TPS_RECEIVED_0, align 4
  %31 = call i32 @mt352_read_register(%struct.mt352_state* %29, i32 %30)
  %32 = or i32 %28, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %34 = load i32, i32* @CHAN_START_1, align 4
  %35 = call i32 @mt352_read_register(%struct.mt352_state* %33, i32 %34)
  %36 = shl i32 %35, 8
  %37 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %38 = load i32, i32* @CHAN_START_0, align 4
  %39 = call i32 @mt352_read_register(%struct.mt352_state* %37, i32 %38)
  %40 = or i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %42 = load i32, i32* @TRL_NOMINAL_RATE_1, align 4
  %43 = call i32 @mt352_read_register(%struct.mt352_state* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 7
  %46 = and i32 %45, 7
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* @mt352_get_parameters.tps_fec_to_api, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %51 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 4
  %54 = and i32 %53, 7
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* @mt352_get_parameters.tps_fec_to_api, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %59 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 13
  %62 = and i32 %61, 3
  switch i32 %62, label %75 [
    i32 0, label %63
    i32 1, label %67
    i32 2, label %71
  ]

63:                                               ; preds = %24
  %64 = load i32, i32* @QPSK, align 4
  %65 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %66 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  br label %79

67:                                               ; preds = %24
  %68 = load i32, i32* @QAM_16, align 4
  %69 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %70 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  br label %79

71:                                               ; preds = %24
  %72 = load i32, i32* @QAM_64, align 4
  %73 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %74 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %24
  %76 = load i32, i32* @QAM_AUTO, align 4
  %77 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %78 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %71, %67, %63
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %90 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 2
  %93 = and i32 %92, 3
  switch i32 %93, label %110 [
    i32 0, label %94
    i32 1, label %98
    i32 2, label %102
    i32 3, label %106
  ]

94:                                               ; preds = %87
  %95 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %96 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %97 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  br label %114

98:                                               ; preds = %87
  %99 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %100 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %101 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  br label %114

102:                                              ; preds = %87
  %103 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %104 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %105 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  br label %114

106:                                              ; preds = %87
  %107 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %108 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %109 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  br label %114

110:                                              ; preds = %87
  %111 = load i32, i32* @GUARD_INTERVAL_AUTO, align 4
  %112 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %113 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %106, %102, %98, %94
  %115 = load i32, i32* %7, align 4
  %116 = ashr i32 %115, 10
  %117 = and i32 %116, 7
  switch i32 %117, label %134 [
    i32 0, label %118
    i32 1, label %122
    i32 2, label %126
    i32 3, label %130
  ]

118:                                              ; preds = %114
  %119 = load i32, i32* @HIERARCHY_NONE, align 4
  %120 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %121 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  br label %138

122:                                              ; preds = %114
  %123 = load i32, i32* @HIERARCHY_1, align 4
  %124 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %125 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  br label %138

126:                                              ; preds = %114
  %127 = load i32, i32* @HIERARCHY_2, align 4
  %128 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %129 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %138

130:                                              ; preds = %114
  %131 = load i32, i32* @HIERARCHY_4, align 4
  %132 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %133 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  br label %138

134:                                              ; preds = %114
  %135 = load i32, i32* @HIERARCHY_AUTO, align 4
  %136 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %137 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %130, %126, %122, %118
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @IF_FREQUENCYx6, align 4
  %141 = sub nsw i32 %139, %140
  %142 = mul nsw i32 500, %141
  %143 = sdiv i32 %142, 3
  %144 = mul nsw i32 %143, 1000
  %145 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %146 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %147, 114
  br i1 %148, label %149, label %153

149:                                              ; preds = %138
  %150 = load i32, i32* @BANDWIDTH_8_MHZ, align 4
  %151 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %152 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %165

153:                                              ; preds = %138
  %154 = load i32, i32* %9, align 4
  %155 = icmp eq i32 %154, 100
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i32, i32* @BANDWIDTH_7_MHZ, align 4
  %158 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %159 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  br label %164

160:                                              ; preds = %153
  %161 = load i32, i32* @BANDWIDTH_6_MHZ, align 4
  %162 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %10, align 8
  %163 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %156
  br label %165

165:                                              ; preds = %164, %149
  %166 = load %struct.mt352_state*, %struct.mt352_state** %6, align 8
  %167 = load i32, i32* @STATUS_2, align 4
  %168 = call i32 @mt352_read_register(%struct.mt352_state* %166, i32 %167)
  %169 = and i32 %168, 2
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i32, i32* @INVERSION_OFF, align 4
  %173 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %174 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  br label %179

175:                                              ; preds = %165
  %176 = load i32, i32* @INVERSION_ON, align 4
  %177 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %178 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  br label %179

179:                                              ; preds = %175, %171
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %179, %21
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @mt352_read_register(%struct.mt352_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
