; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_agc_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_agc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state* }
%struct.dib7000m_state = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 (i32*, i32)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dvb_frontend_parameters = type { i32 }

@DIB7000M_POWER_INTERF_ANALOG_AGC = common dso_local global i32 0, align 4
@DIBX000_ADC_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SPLIT %p: %hd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7000m_agc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_agc_startup(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dib7000m_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.dib7000m_state*, %struct.dib7000m_state** %12, align 8
  store %struct.dib7000m_state* %13, %struct.dib7000m_state** %6, align 8
  %14 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %15 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %14, i32 72)
  store i32 %15, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %16 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %17 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %16, i32 0, i32 0
  store i32* %17, i32** %9, align 8
  %18 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %19 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %144 [
    i32 0, label %21
    i32 1, label %41
    i32 2, label %75
    i32 3, label %85
    i32 4, label %114
    i32 5, label %124
  ]

21:                                               ; preds = %2
  %22 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %23 = load i32, i32* @DIB7000M_POWER_INTERF_ANALOG_AGC, align 4
  %24 = call i32 @dib7000m_set_power_mode(%struct.dib7000m_state* %22, i32 %23)
  %25 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %26 = load i32, i32* @DIBX000_ADC_ON, align 4
  %27 = call i32 @dib7000m_set_adc_state(%struct.dib7000m_state* %25, i32 %26)
  %28 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %29 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 1000
  %33 = call i32 @BAND_OF_FREQUENCY(i32 %32)
  %34 = call i32 @dib7000m_set_agc_config(%struct.dib7000m_state* %28, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %147

37:                                               ; preds = %21
  store i32 7, i32* %8, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %145

41:                                               ; preds = %2
  %42 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %43 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (i32*, i32)*, i32 (i32*, i32)** %44, align 8
  %46 = icmp ne i32 (i32*, i32)* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %49 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (i32*, i32)*, i32 (i32*, i32)** %50, align 8
  %52 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %53 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %52, i32 0, i32 1
  %54 = call i32 %51(i32* %53, i32 1)
  br label %55

55:                                               ; preds = %47, %41
  %56 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %57 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %56, i32 75, i32 32768)
  %58 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %59 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %55
  %65 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %66 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %65, i32 103, i32 256)
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  store i32 5, i32* %8, align 4
  br label %72

70:                                               ; preds = %55
  %71 = load i32*, i32** %9, align 8
  store i32 4, i32* %71, align 4
  store i32 7, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %64
  %73 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %74 = call i32 @dib7000m_restart_agc(%struct.dib7000m_state* %73)
  br label %145

75:                                               ; preds = %2
  %76 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, 16
  %79 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %76, i32 72, i32 %78)
  %80 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %81 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %80, i32 103, i32 1024)
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  store i32 14, i32* %8, align 4
  br label %145

85:                                               ; preds = %2
  %86 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %87 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %86, i32 392)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %89 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %90 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %89, i32 390)
  %91 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %88, i32 75, i32 %90)
  %92 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, -17
  %95 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %92, i32 72, i32 %94)
  %96 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %97 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %98 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %97, i32 0, i32 3
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 9
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %96, i32 103, i32 %104)
  %106 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %107 = call i32 @dib7000m_restart_agc(%struct.dib7000m_state* %106)
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @dprintk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.dvb_frontend* %108, i32 %109)
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  store i32 5, i32* %8, align 4
  br label %145

114:                                              ; preds = %2
  store i32 7, i32* %8, align 4
  %115 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %116 = call i32 @dib7000m_update_lna(%struct.dib7000m_state* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 5, i32* %8, align 4
  br label %123

119:                                              ; preds = %114
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %119, %118
  br label %145

124:                                              ; preds = %2
  %125 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %126 = call i32 @dib7000m_agc_soft_split(%struct.dib7000m_state* %125)
  %127 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %128 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32 (i32*, i32)*, i32 (i32*, i32)** %129, align 8
  %131 = icmp ne i32 (i32*, i32)* %130, null
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %134 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32 (i32*, i32)*, i32 (i32*, i32)** %135, align 8
  %137 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %138 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %137, i32 0, i32 1
  %139 = call i32 %136(i32* %138, i32 0)
  br label %140

140:                                              ; preds = %132, %124
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %145

144:                                              ; preds = %2
  br label %145

145:                                              ; preds = %144, %140, %123, %85, %75, %72, %37
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %145, %36
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_power_mode(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_adc_state(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_agc_config(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

declare dso_local i32 @dib7000m_restart_agc(%struct.dib7000m_state*) #1

declare dso_local i32 @dprintk(i8*, %struct.dvb_frontend*, i32) #1

declare dso_local i32 @dib7000m_update_lna(%struct.dib7000m_state*) #1

declare dso_local i32 @dib7000m_agc_soft_split(%struct.dib7000m_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
