; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp887x.c_sp887x_setup_frontend_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp887x.c_sp887x_setup_frontend_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.sp887x_state* }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.1*, i32*)*, i32 (%struct.dvb_frontend.2*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.dvb_frontend.2 = type opaque
%struct.sp887x_state = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@BANDWIDTH_8_MHZ = common dso_local global i64 0, align 8
@BANDWIDTH_7_MHZ = common dso_local global i64 0, align 8
@BANDWIDTH_6_MHZ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @sp887x_setup_frontend_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp887x_setup_frontend_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.sp887x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.sp887x_state*, %struct.sp887x_state** %12, align 8
  store %struct.sp887x_state* %13, %struct.sp887x_state** %6, align 8
  %14 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BANDWIDTH_8_MHZ, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %2
  %22 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BANDWIDTH_7_MHZ, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BANDWIDTH_6_MHZ, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %188

40:                                               ; preds = %29, %21, %2
  %41 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %42 = call i32 @configure_reg0xc05(%struct.dvb_frontend_parameters* %41, i32* %10)
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %188

46:                                               ; preds = %40
  %47 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %48 = call i32 @sp887x_microcontroller_stop(%struct.sp887x_state* %47)
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32 (%struct.dvb_frontend.2*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.2*, %struct.dvb_frontend_parameters*)** %52, align 8
  %54 = icmp ne i32 (%struct.dvb_frontend.2*, %struct.dvb_frontend_parameters*)* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %46
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32 (%struct.dvb_frontend.2*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.2*, %struct.dvb_frontend_parameters*)** %59, align 8
  %61 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %62 = bitcast %struct.dvb_frontend* %61 to %struct.dvb_frontend.2*
  %63 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %64 = call i32 %60(%struct.dvb_frontend.2* %62, %struct.dvb_frontend_parameters* %63)
  %65 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %67, align 8
  %69 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %55
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %72 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %73, align 8
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %76 = bitcast %struct.dvb_frontend* %75 to %struct.dvb_frontend.0*
  %77 = call i32 %74(%struct.dvb_frontend.0* %76, i32 0)
  br label %78

78:                                               ; preds = %70, %55
  br label %79

79:                                               ; preds = %78, %46
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %81 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32 (%struct.dvb_frontend.1*, i32*)*, i32 (%struct.dvb_frontend.1*, i32*)** %83, align 8
  %85 = icmp ne i32 (%struct.dvb_frontend.1*, i32*)* %84, null
  br i1 %85, label %86, label %109

86:                                               ; preds = %79
  %87 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %88 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32 (%struct.dvb_frontend.1*, i32*)*, i32 (%struct.dvb_frontend.1*, i32*)** %90, align 8
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %93 = bitcast %struct.dvb_frontend* %92 to %struct.dvb_frontend.1*
  %94 = call i32 %91(%struct.dvb_frontend.1* %93, i32* %7)
  %95 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %96 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %97, align 8
  %99 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %86
  %101 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %103, align 8
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %106 = bitcast %struct.dvb_frontend* %105 to %struct.dvb_frontend.0*
  %107 = call i32 %104(%struct.dvb_frontend.0* %106, i32 0)
  br label %108

108:                                              ; preds = %100, %86
  br label %113

109:                                              ; preds = %79
  %110 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %109, %108
  %114 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %115 = call i32 @sp887x_readreg(%struct.sp887x_state* %114, i32 512)
  %116 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %117 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @sp887x_correct_offsets(%struct.sp887x_state* %116, %struct.dvb_frontend_parameters* %117, i32 %118)
  %120 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %121 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @BANDWIDTH_6_MHZ, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %113
  store i32 2, i32* %9, align 4
  br label %139

128:                                              ; preds = %113
  %129 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %130 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @BANDWIDTH_7_MHZ, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 1, i32* %9, align 4
  br label %138

137:                                              ; preds = %128
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %137, %136
  br label %139

139:                                              ; preds = %138, %127
  %140 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @sp887x_writereg(%struct.sp887x_state* %140, i32 785, i32 %141)
  %143 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %144 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @TRANSMISSION_MODE_2K, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %139
  %151 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %152 = call i32 @sp887x_writereg(%struct.sp887x_state* %151, i32 824, i32 0)
  br label %156

153:                                              ; preds = %139
  %154 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %155 = call i32 @sp887x_writereg(%struct.sp887x_state* %154, i32 824, i32 1)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @sp887x_writereg(%struct.sp887x_state* %157, i32 3077, i32 %158)
  %160 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %161 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @BANDWIDTH_6_MHZ, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  store i32 16, i32* %9, align 4
  br label %179

168:                                              ; preds = %156
  %169 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %170 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @BANDWIDTH_7_MHZ, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  store i32 24, i32* %9, align 4
  br label %178

177:                                              ; preds = %168
  store i32 0, i32* %9, align 4
  br label %178

178:                                              ; preds = %177, %176
  br label %179

179:                                              ; preds = %178, %167
  %180 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %181 = load i32, i32* %9, align 4
  %182 = or i32 352, %181
  %183 = call i32 @sp887x_writereg(%struct.sp887x_state* %180, i32 3860, i32 %182)
  %184 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %185 = call i32 @sp887x_writereg(%struct.sp887x_state* %184, i32 3861, i32 0)
  %186 = load %struct.sp887x_state*, %struct.sp887x_state** %6, align 8
  %187 = call i32 @sp887x_microcontroller_start(%struct.sp887x_state* %186)
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %179, %44, %37
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @configure_reg0xc05(%struct.dvb_frontend_parameters*, i32*) #1

declare dso_local i32 @sp887x_microcontroller_stop(%struct.sp887x_state*) #1

declare dso_local i32 @sp887x_readreg(%struct.sp887x_state*, i32) #1

declare dso_local i32 @sp887x_correct_offsets(%struct.sp887x_state*, %struct.dvb_frontend_parameters*, i32) #1

declare dso_local i32 @sp887x_writereg(%struct.sp887x_state*, i32, i32) #1

declare dso_local i32 @sp887x_microcontroller_start(%struct.sp887x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
