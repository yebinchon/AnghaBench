; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp8870.c_sp8870_set_frontend_parameters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_sp8870.c_sp8870_set_frontend_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.sp8870_state* }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.sp8870_state = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@BANDWIDTH_6_MHZ = common dso_local global i64 0, align 8
@BANDWIDTH_7_MHZ = common dso_local global i64 0, align 8
@TRANSMISSION_MODE_2K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @sp8870_set_frontend_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp8870_set_frontend_parameters(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.sp8870_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1
  %11 = load %struct.sp8870_state*, %struct.sp8870_state** %10, align 8
  store %struct.sp8870_state* %11, %struct.sp8870_state** %6, align 8
  %12 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %13 = call i32 @configure_reg0xc05(%struct.dvb_frontend_parameters* %12, i32* %8)
  store i32 %13, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %106

17:                                               ; preds = %2
  %18 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %19 = call i32 @sp8870_microcontroller_stop(%struct.sp8870_state* %18)
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %23, align 8
  %25 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %17
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %30, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = bitcast %struct.dvb_frontend* %32 to %struct.dvb_frontend.1*
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %35 = call i32 %31(%struct.dvb_frontend.1* %33, %struct.dvb_frontend_parameters* %34)
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %38, align 8
  %40 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %26
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %43 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %44, align 8
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %47 = bitcast %struct.dvb_frontend* %46 to %struct.dvb_frontend.0*
  %48 = call i32 %45(%struct.dvb_frontend.0* %47, i32 0)
  br label %49

49:                                               ; preds = %41, %26
  br label %50

50:                                               ; preds = %49, %17
  %51 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %52 = call i32 @sp8870_writereg(%struct.sp8870_state* %51, i32 793, i32 10)
  %53 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %54 = call i32 @sp8870_writereg(%struct.sp8870_state* %53, i32 794, i32 2731)
  %55 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %56 = call i32 @sp8870_writereg(%struct.sp8870_state* %55, i32 777, i32 1024)
  %57 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %58 = call i32 @sp8870_writereg(%struct.sp8870_state* %57, i32 778, i32 0)
  %59 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BANDWIDTH_6_MHZ, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %50
  %67 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %68 = call i32 @sp8870_writereg(%struct.sp8870_state* %67, i32 785, i32 2)
  br label %84

69:                                               ; preds = %50
  %70 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BANDWIDTH_7_MHZ, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %79 = call i32 @sp8870_writereg(%struct.sp8870_state* %78, i32 785, i32 1)
  br label %83

80:                                               ; preds = %69
  %81 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %82 = call i32 @sp8870_writereg(%struct.sp8870_state* %81, i32 785, i32 0)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %66
  %85 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %86 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TRANSMISSION_MODE_2K, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %94 = call i32 @sp8870_writereg(%struct.sp8870_state* %93, i32 824, i32 0)
  br label %98

95:                                               ; preds = %84
  %96 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %97 = call i32 @sp8870_writereg(%struct.sp8870_state* %96, i32 824, i32 1)
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @sp8870_writereg(%struct.sp8870_state* %99, i32 3077, i32 %100)
  %102 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %103 = call i32 @sp8870_readreg(%struct.sp8870_state* %102, i32 512)
  %104 = load %struct.sp8870_state*, %struct.sp8870_state** %6, align 8
  %105 = call i32 @sp8870_microcontroller_start(%struct.sp8870_state* %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %98, %15
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @configure_reg0xc05(%struct.dvb_frontend_parameters*, i32*) #1

declare dso_local i32 @sp8870_microcontroller_stop(%struct.sp8870_state*) #1

declare dso_local i32 @sp8870_writereg(%struct.sp8870_state*, i32, i32) #1

declare dso_local i32 @sp8870_readreg(%struct.sp8870_state*, i32) #1

declare dso_local i32 @sp8870_microcontroller_start(%struct.sp8870_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
