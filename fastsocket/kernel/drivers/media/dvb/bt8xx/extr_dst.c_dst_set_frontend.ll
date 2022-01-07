; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dst_state* }
%struct.dst_state = type { i64, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@DST_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Set Frequency=[%d]\00", align 1
@DST_TYPE_IS_SAT = common dso_local global i64 0, align 8
@DST_TYPE_HAS_OBS_REGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Set Symbolrate=[%d]\00", align 1
@DST_TYPE_IS_TERR = common dso_local global i64 0, align 8
@DST_TYPE_IS_CABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dst_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dst_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.dst_state*, %struct.dst_state** %11, align 8
  store %struct.dst_state* %12, %struct.dst_state** %7, align 8
  %13 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %14 = icmp ne %struct.dvb_frontend_parameters* %13, null
  br i1 %14, label %15, label %122

15:                                               ; preds = %2
  %16 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dst_set_freq(%struct.dst_state* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %124

25:                                               ; preds = %15
  %26 = load i32, i32* @verbose, align 4
  %27 = load i32, i32* @DST_DEBUG, align 4
  %28 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dprintk(i32 %26, i32 %27, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %33 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DST_TYPE_IS_SAT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %25
  %38 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %39 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DST_TYPE_HAS_OBS_REGS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %46 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %47 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dst_set_inversion(%struct.dst_state* %45, i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %52 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %53 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dst_set_fec(%struct.dst_state* %51, i32 %56)
  %58 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %59 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dst_set_symbolrate(%struct.dst_state* %58, i32 %63)
  %65 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %66 = call i32 @dst_set_polarization(%struct.dst_state* %65)
  %67 = load i32, i32* @verbose, align 4
  %68 = load i32, i32* @DST_DEBUG, align 4
  %69 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dprintk(i32 %67, i32 %68, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %119

75:                                               ; preds = %25
  %76 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %77 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DST_TYPE_IS_TERR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %83 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dst_set_bandwidth(%struct.dst_state* %82, i32 %87)
  br label %118

89:                                               ; preds = %75
  %90 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %91 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DST_TYPE_IS_CABLE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %89
  %96 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %97 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %98 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dst_set_fec(%struct.dst_state* %96, i32 %101)
  %103 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %104 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %105 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dst_set_symbolrate(%struct.dst_state* %103, i32 %108)
  %110 = load %struct.dst_state*, %struct.dst_state** %7, align 8
  %111 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %112 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dst_set_modulation(%struct.dst_state* %110, i32 %115)
  br label %117

117:                                              ; preds = %95, %89
  br label %118

118:                                              ; preds = %117, %81
  br label %119

119:                                              ; preds = %118, %50
  %120 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %121 = call i32 @dst_write_tuna(%struct.dvb_frontend* %120)
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %119, %2
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %23
  %125 = load i32, i32* %3, align 4
  ret i32 %125
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
