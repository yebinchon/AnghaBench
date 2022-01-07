; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.dib7000m_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dib7000m_state = type { i64, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }

@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@QAM_AUTO = common dso_local global i64 0, align 8
@FEC_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"autosearch returns: %d\00", align 1
@OUTMODE_MPEG2_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7000m_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dib7000m_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.dib7000m_state*, %struct.dib7000m_state** %12, align 8
  store %struct.dib7000m_state* %13, %struct.dib7000m_state** %6, align 8
  %14 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %15 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %16 = call i32 @dib7000m_set_output_mode(%struct.dib7000m_state* %14, i32 %15)
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %23 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @BANDWIDTH_TO_KHZ(i32 %29)
  %31 = call i32 @dib7000m_set_bandwidth(%struct.dib7000m_state* %24, i32 %30)
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %35, align 8
  %37 = icmp ne i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %2
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %40 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %42, align 8
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %45 = bitcast %struct.dvb_frontend* %44 to %struct.dvb_frontend.0*
  %46 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %47 = call i32 %43(%struct.dvb_frontend.0* %45, %struct.dvb_frontend_parameters* %46)
  br label %48

48:                                               ; preds = %38, %2
  %49 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %50 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %61, %48
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %53 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %54 = call i32 @dib7000m_agc_startup(%struct.dvb_frontend* %52, %struct.dvb_frontend_parameters* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @msleep(i32 %58)
  br label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %51, label %64

64:                                               ; preds = %61
  %65 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %96, label %72

72:                                               ; preds = %64
  %73 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %74 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %72
  %81 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %82 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @QAM_AUTO, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @FEC_AUTO, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %126

96:                                               ; preds = %88, %80, %72, %64
  store i32 800, i32* %9, align 4
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %98 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %99 = call i32 @dib7000m_autosearch_start(%struct.dvb_frontend* %97, %struct.dvb_frontend_parameters* %98)
  br label %100

100:                                              ; preds = %111, %96
  %101 = call i32 @msleep(i32 1)
  %102 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %103 = call i32 @dib7000m_autosearch_is_irq(%struct.dvb_frontend* %102)
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %9, align 4
  %110 = icmp ne i32 %108, 0
  br label %111

111:                                              ; preds = %107, %104
  %112 = phi i1 [ false, %104 ], [ %110, %107 ]
  br i1 %112, label %100, label %113

113:                                              ; preds = %111
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %10, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %118, %113
  store i32 0, i32* %3, align 4
  br label %134

122:                                              ; preds = %118
  %123 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %124 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %125 = call i32 @dib7000m_get_frontend(%struct.dvb_frontend* %123, %struct.dvb_frontend_parameters* %124)
  br label %126

126:                                              ; preds = %122, %88
  %127 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %128 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %129 = call i32 @dib7000m_tune(%struct.dvb_frontend* %127, %struct.dvb_frontend_parameters* %128)
  store i32 %129, i32* %8, align 4
  %130 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %131 = load i32, i32* @OUTMODE_MPEG2_FIFO, align 4
  %132 = call i32 @dib7000m_set_output_mode(%struct.dib7000m_state* %130, i32 %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %126, %121
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @dib7000m_set_output_mode(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_set_bandwidth(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib7000m_agc_startup(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib7000m_autosearch_start(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @dib7000m_autosearch_is_irq(%struct.dvb_frontend*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib7000m_get_frontend(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @dib7000m_tune(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
