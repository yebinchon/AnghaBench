; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_agc_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_agc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32*, i32)* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32 }

@DIB7000P_POWER_ALL = common dso_local global i32 0, align 4
@DIBX000_ADC_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SPLIT %p: %hd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7000p_agc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_agc_startup(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dib7000p_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.dib7000p_state*, %struct.dib7000p_state** %11, align 8
  store %struct.dib7000p_state* %12, %struct.dib7000p_state** %6, align 8
  store i32 -1, i32* %7, align 4
  %13 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %14 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %13, i32 0, i32 0
  store i32* %14, i32** %8, align 8
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %16 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %176 [
    i32 0, label %18
    i32 1, label %40
    i32 2, label %88
    i32 3, label %109
    i32 4, label %148
    i32 5, label %158
  ]

18:                                               ; preds = %2
  %19 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %20 = load i32, i32* @DIB7000P_POWER_ALL, align 4
  %21 = call i32 @dib7000p_set_power_mode(%struct.dib7000p_state* %19, i32 %20)
  %22 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %23 = load i32, i32* @DIBX000_ADC_ON, align 4
  %24 = call i32 @dib7000p_set_adc_state(%struct.dib7000p_state* %22, i32 %23)
  %25 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %26 = call i32 @dib7000p_pll_clk_cfg(%struct.dib7000p_state* %25)
  %27 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %28 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 1000
  %32 = call i32 @BAND_OF_FREQUENCY(i32 %31)
  %33 = call i32 @dib7000p_set_agc_config(%struct.dib7000p_state* %27, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %179

36:                                               ; preds = %18
  store i32 7, i32* %7, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %177

40:                                               ; preds = %2
  %41 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %42 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (i32*, i32)*, i32 (i32*, i32)** %43, align 8
  %45 = icmp ne i32 (i32*, i32)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %48 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (i32*, i32)*, i32 (i32*, i32)** %49, align 8
  %51 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %52 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %51, i32 0, i32 1
  %53 = call i32 %50(i32* %52, i32 1)
  br label %54

54:                                               ; preds = %46, %40
  %55 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %56 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %55, i32 78, i32 32768)
  %57 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %58 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %83, label %63

63:                                               ; preds = %54
  %64 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %65 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %66 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 13
  %71 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %72 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 9
  %77 = or i32 %70, %76
  %78 = or i32 %77, 256
  %79 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %64, i32 106, i32 %78)
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  store i32 5, i32* %7, align 4
  br label %85

83:                                               ; preds = %54
  %84 = load i32*, i32** %8, align 8
  store i32 4, i32* %84, align 4
  store i32 7, i32* %7, align 4
  br label %85

85:                                               ; preds = %83, %63
  %86 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %87 = call i32 @dib7000p_restart_agc(%struct.dib7000p_state* %86)
  br label %177

88:                                               ; preds = %2
  %89 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %90 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %91 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %90, i32 0, i32 3
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, 16
  %96 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %89, i32 75, i32 %95)
  %97 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %98 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %99 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 13
  %104 = or i32 %103, 1024
  %105 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %97, i32 106, i32 %104)
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  store i32 14, i32* %7, align 4
  br label %177

109:                                              ; preds = %2
  %110 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %111 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %110, i32 396)
  store i32 %111, i32* %9, align 4
  %112 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %113 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %114 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %113, i32 394)
  %115 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %112, i32 78, i32 %114)
  %116 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %117 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %118 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %117, i32 0, i32 3
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %116, i32 75, i32 %121)
  %123 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %124 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %125 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %124, i32 0, i32 3
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 13
  %130 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %131 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %130, i32 0, i32 3
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 9
  %136 = or i32 %129, %135
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %123, i32 106, i32 %138)
  %140 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %141 = call i32 @dib7000p_restart_agc(%struct.dib7000p_state* %140)
  %142 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.dvb_frontend* %142, i32 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  store i32 5, i32* %7, align 4
  br label %177

148:                                              ; preds = %2
  store i32 7, i32* %7, align 4
  %149 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %150 = call i32 @dib7000p_update_lna(%struct.dib7000p_state* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 5, i32* %7, align 4
  br label %157

153:                                              ; preds = %148
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %153, %152
  br label %177

158:                                              ; preds = %2
  %159 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %160 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32 (i32*, i32)*, i32 (i32*, i32)** %161, align 8
  %163 = icmp ne i32 (i32*, i32)* %162, null
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %166 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32 (i32*, i32)*, i32 (i32*, i32)** %167, align 8
  %169 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %170 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %169, i32 0, i32 1
  %171 = call i32 %168(i32* %170, i32 0)
  br label %172

172:                                              ; preds = %164, %158
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %177

176:                                              ; preds = %2
  br label %177

177:                                              ; preds = %176, %172, %157, %109, %88, %85, %36
  %178 = load i32, i32* %7, align 4
  store i32 %178, i32* %3, align 4
  br label %179

179:                                              ; preds = %177, %35
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i32 @dib7000p_set_power_mode(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_set_adc_state(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_pll_clk_cfg(%struct.dib7000p_state*) #1

declare dso_local i32 @dib7000p_set_agc_config(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7000p_restart_agc(%struct.dib7000p_state*) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dprintk(i8*, %struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib7000p_update_lna(%struct.dib7000p_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
