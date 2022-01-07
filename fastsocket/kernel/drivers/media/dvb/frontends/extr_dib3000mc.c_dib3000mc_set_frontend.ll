; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.dib3000mc_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dib3000mc_state = type { i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }

@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@buggy_sfn_workaround = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@QAM_AUTO = common dso_local global i64 0, align 8
@FEC_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"autosearch returns: %d\0A\00", align 1
@OUTMODE_MPEG2_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib3000mc_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dib3000mc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %11, align 8
  store %struct.dib3000mc_state* %12, %struct.dib3000mc_state** %6, align 8
  %13 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %6, align 8
  %14 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %15 = call i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state* %13, i32 %14)
  %16 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %6, align 8
  %22 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %6, align 8
  %24 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BANDWIDTH_TO_KHZ(i32 %28)
  %30 = call i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state* %23, i32 %29)
  %31 = load i32, i32* @buggy_sfn_workaround, align 4
  %32 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %6, align 8
  %33 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %37, align 8
  %39 = icmp ne i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %2
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %44, align 8
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %47 = bitcast %struct.dvb_frontend* %46 to %struct.dvb_frontend.0*
  %48 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %49 = call i32 %45(%struct.dvb_frontend.0* %47, %struct.dvb_frontend_parameters* %48)
  %50 = call i32 @msleep(i32 100)
  br label %51

51:                                               ; preds = %40, %2
  %52 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %83, label %59

59:                                               ; preds = %51
  %60 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %83, label %67

67:                                               ; preds = %59
  %68 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %69 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @QAM_AUTO, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %77 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @FEC_AUTO, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %75, %67, %59, %51
  store i32 1000, i32* %8, align 4
  %84 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %85 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %86 = call i32 @dib3000mc_autosearch_start(%struct.dvb_frontend* %84, %struct.dvb_frontend_parameters* %85)
  br label %87

87:                                               ; preds = %98, %83
  %88 = call i32 @msleep(i32 1)
  %89 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %90 = call i32 @dib3000mc_autosearch_is_irq(%struct.dvb_frontend* %89)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %8, align 4
  %97 = icmp ne i32 %95, 0
  br label %98

98:                                               ; preds = %94, %91
  %99 = phi i1 [ false, %91 ], [ %97, %94 ]
  br i1 %99, label %87, label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %100
  store i32 0, i32* %3, align 4
  br label %121

109:                                              ; preds = %105
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %111 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %112 = call i32 @dib3000mc_get_frontend(%struct.dvb_frontend* %110, %struct.dvb_frontend_parameters* %111)
  br label %113

113:                                              ; preds = %109, %75
  %114 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %115 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %116 = call i32 @dib3000mc_tune(%struct.dvb_frontend* %114, %struct.dvb_frontend_parameters* %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %6, align 8
  %118 = load i32, i32* @OUTMODE_MPEG2_FIFO, align 4
  %119 = call i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state* %117, i32 %118)
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %113, %108
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib3000mc_autosearch_start(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @dib3000mc_autosearch_is_irq(%struct.dvb_frontend*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib3000mc_get_frontend(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @dib3000mc_tune(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
