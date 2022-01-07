; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_agc_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib8000.c_dib8000_agc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__, %struct.dib8000_state* }
%struct.TYPE_3__ = type { i32 }
%struct.dib8000_state = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 (i32*, i32)* }

@DIBX000_ADC_ON = common dso_local global i32 0, align 4
@CT_AGC_STOP = common dso_local global i32 0, align 4
@FE_STATUS_TUNE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_agc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_agc_startup(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.dib8000_state*, %struct.dib8000_state** %7, align 8
  store %struct.dib8000_state* %8, %struct.dib8000_state** %3, align 8
  %9 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %10 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %9, i32 0, i32 0
  store i32* %10, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %80 [
    i32 131, label %13
    i32 130, label %35
    i32 129, label %53
    i32 128, label %61
  ]

13:                                               ; preds = %1
  %14 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %15 = load i32, i32* @DIBX000_ADC_ON, align 4
  %16 = call i32 @dib8000_set_adc_state(%struct.dib8000_state* %14, i32 %15)
  %17 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 1000
  %23 = call i64 @BAND_OF_FREQUENCY(i32 %22)
  %24 = trunc i64 %23 to i8
  %25 = call i32 @dib8000_set_agc_config(%struct.dib8000_state* %17, i8 zeroext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %13
  %28 = load i32, i32* @CT_AGC_STOP, align 4
  %29 = load i32*, i32** %4, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @FE_STATUS_TUNE_FAILED, align 4
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %32 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %83

33:                                               ; preds = %13
  store i32 70, i32* %5, align 4
  %34 = load i32*, i32** %4, align 8
  store i32 130, i32* %34, align 4
  br label %83

35:                                               ; preds = %1
  %36 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %37 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32 (i32*, i32)*, i32 (i32*, i32)** %38, align 8
  %40 = icmp ne i32 (i32*, i32)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %43 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32 (i32*, i32)*, i32 (i32*, i32)** %44, align 8
  %46 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %47 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %46, i32 0, i32 1
  %48 = call i32 %45(i32* %47, i32 1)
  br label %49

49:                                               ; preds = %41, %35
  %50 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %51 = call i32 @dib8000_restart_agc(%struct.dib8000_state* %50)
  store i32 50, i32* %5, align 4
  %52 = load i32*, i32** %4, align 8
  store i32 129, i32* %52, align 4
  br label %83

53:                                               ; preds = %1
  store i32 70, i32* %5, align 4
  %54 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %55 = call i32 @dib8000_update_lna(%struct.dib8000_state* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 50, i32* %5, align 4
  br label %60

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  store i32 128, i32* %59, align 4
  br label %60

60:                                               ; preds = %58, %57
  br label %83

61:                                               ; preds = %1
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %63 = call i32 @dib8000_agc_soft_split(%struct.dib8000_state* %62)
  %64 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %65 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (i32*, i32)*, i32 (i32*, i32)** %66, align 8
  %68 = icmp ne i32 (i32*, i32)* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %71 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (i32*, i32)*, i32 (i32*, i32)** %72, align 8
  %74 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %75 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %74, i32 0, i32 1
  %76 = call i32 %73(i32* %75, i32 0)
  br label %77

77:                                               ; preds = %69, %61
  %78 = load i32, i32* @CT_AGC_STOP, align 4
  %79 = load i32*, i32** %4, align 8
  store i32 %78, i32* %79, align 4
  br label %83

80:                                               ; preds = %1
  %81 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %82 = call i32 @dib8000_agc_soft_split(%struct.dib8000_state* %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %77, %60, %49, %33, %27
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @dib8000_set_adc_state(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_set_agc_config(%struct.dib8000_state*, i8 zeroext) #1

declare dso_local i64 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @dib8000_restart_agc(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_update_lna(%struct.dib8000_state*) #1

declare dso_local i32 @dib8000_agc_soft_split(%struct.dib8000_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
