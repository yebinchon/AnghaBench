; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0297.c_stv0297_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0297.c_stv0297_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0297_state* }
%struct.stv0297_state = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dvb_frontend_parameters = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@INVERSION_ON = common dso_local global i64 0, align 8
@INVERSION_OFF = common dso_local global i64 0, align 8
@FEC_NONE = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_32 = common dso_local global i32 0, align 4
@QAM_128 = common dso_local global i32 0, align 4
@QAM_256 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @stv0297_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0297_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.stv0297_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stv0297_state*, %struct.stv0297_state** %9, align 8
  store %struct.stv0297_state* %10, %struct.stv0297_state** %5, align 8
  %11 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %12 = call i32 @stv0297_readreg(%struct.stv0297_state* %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %14 = call i32 @stv0297_readreg(%struct.stv0297_state* %13, i32 131)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %16 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @INVERSION_ON, align 8
  br label %27

25:                                               ; preds = %2
  %26 = load i64, i64* @INVERSION_OFF, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  %29 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %30 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %32 = getelementptr inbounds %struct.stv0297_state, %struct.stv0297_state* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %27
  %38 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %39 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @INVERSION_ON, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @INVERSION_OFF, align 8
  br label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @INVERSION_ON, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i64 [ %44, %43 ], [ %46, %45 ]
  %49 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %27
  %52 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %53 = call i32 @stv0297_get_symbolrate(%struct.stv0297_state* %52)
  %54 = mul nsw i32 %53, 1000
  %55 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  %59 = load i32, i32* @FEC_NONE, align 4
  %60 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 4
  %66 = and i32 %65, 7
  switch i32 %66, label %97 [
    i32 0, label %67
    i32 1, label %73
    i32 2, label %79
    i32 3, label %85
    i32 4, label %91
  ]

67:                                               ; preds = %51
  %68 = load i32, i32* @QAM_16, align 4
  %69 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  br label %97

73:                                               ; preds = %51
  %74 = load i32, i32* @QAM_32, align 4
  %75 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  br label %97

79:                                               ; preds = %51
  %80 = load i32, i32* @QAM_128, align 4
  %81 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %82 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  br label %97

85:                                               ; preds = %51
  %86 = load i32, i32* @QAM_256, align 4
  %87 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %88 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  br label %97

91:                                               ; preds = %51
  %92 = load i32, i32* @QAM_64, align 4
  %93 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %94 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %51, %91, %85, %79, %73, %67
  ret i32 0
}

declare dso_local i32 @stv0297_readreg(%struct.stv0297_state*, i32) #1

declare dso_local i32 @stv0297_get_symbolrate(%struct.stv0297_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
