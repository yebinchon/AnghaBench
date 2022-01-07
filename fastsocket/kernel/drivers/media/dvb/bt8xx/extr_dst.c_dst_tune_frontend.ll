; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_tune_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_tune_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i64, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@verbose = common dso_local global i32 0, align 4
@DST_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Set Frequency=[%d]\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Set Symbolrate=[%d]\00", align 1
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@FE_TUNE_MODE_ONESHOT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*, i32, i32*, i32*)* @dst_tune_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_tune_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.dvb_frontend_parameters*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dst_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.dst_state*, %struct.dst_state** %13, align 8
  store %struct.dst_state* %14, %struct.dst_state** %11, align 8
  %15 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %16 = icmp ne %struct.dvb_frontend_parameters* %15, null
  br i1 %16, label %17, label %119

17:                                               ; preds = %5
  %18 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %19 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dst_set_freq(%struct.dst_state* %18, i32 %21)
  %23 = load i32, i32* @verbose, align 4
  %24 = load i32, i32* @DST_DEBUG, align 4
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dprintk(i32 %23, i32 %24, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %30 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %17
  %35 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %36 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %43 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dst_set_inversion(%struct.dst_state* %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %49 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dst_set_fec(%struct.dst_state* %48, i32 %53)
  %55 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %56 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dst_set_symbolrate(%struct.dst_state* %55, i32 %60)
  %62 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %63 = call i32 @dst_set_polarization(%struct.dst_state* %62)
  %64 = load i32, i32* @verbose, align 4
  %65 = load i32, i32* @DST_DEBUG, align 4
  %66 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dprintk(i32 %64, i32 %65, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %116

72:                                               ; preds = %17
  %73 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %74 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %80 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %81 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dst_set_bandwidth(%struct.dst_state* %79, i32 %84)
  br label %115

86:                                               ; preds = %72
  %87 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %88 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %114

92:                                               ; preds = %86
  %93 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %94 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %95 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dst_set_fec(%struct.dst_state* %93, i32 %98)
  %100 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %101 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %102 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dst_set_symbolrate(%struct.dst_state* %100, i32 %105)
  %107 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  %108 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %109 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dst_set_modulation(%struct.dst_state* %107, i32 %112)
  br label %114

114:                                              ; preds = %92, %86
  br label %115

115:                                              ; preds = %114, %78
  br label %116

116:                                              ; preds = %115, %47
  %117 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %118 = call i32 @dst_write_tuna(%struct.dvb_frontend* %117)
  br label %119

119:                                              ; preds = %116, %5
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @FE_TUNE_MODE_ONESHOT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @dst_read_status(%struct.dvb_frontend* %125, i32* %126)
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32, i32* @HZ, align 4
  %130 = sdiv i32 %129, 10
  %131 = load i32*, i32** %9, align 8
  store i32 %130, i32* %131, align 4
  ret i32 0
}

declare dso_local i32 @dst_set_freq(%struct.dst_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dst_set_inversion(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_set_fec(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_set_symbolrate(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_set_polarization(%struct.dst_state*) #1

declare dso_local i32 @dst_set_bandwidth(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_set_modulation(%struct.dst_state*, i32) #1

declare dso_local i32 @dst_write_tuna(%struct.dvb_frontend*) #1

declare dso_local i32 @dst_read_status(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
