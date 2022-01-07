; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_search.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv090x.c_stv090x_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.stv090x_state* }
%struct.dtv_frontend_properties = type { i32 }
%struct.stv090x_state = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DVBFE_ALGO_SEARCH_INVALID = common dso_local global i32 0, align 4
@STV090x_SEARCH_AUTO = common dso_local global i32 0, align 4
@STV090x_COLD_SEARCH = common dso_local global i32 0, align 4
@STV090x_PRERR = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Search range: 10 MHz\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Search range: 5 MHz\00", align 1
@STV090x_RANGEOK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Search success!\00", align 1
@DVBFE_ALGO_SEARCH_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Search failed!\00", align 1
@DVBFE_ALGO_SEARCH_FAILED = common dso_local global i32 0, align 4
@DVBFE_ALGO_SEARCH_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @stv090x_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv090x_search(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.stv090x_state*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1
  %10 = load %struct.stv090x_state*, %struct.stv090x_state** %9, align 8
  store %struct.stv090x_state* %10, %struct.stv090x_state** %6, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  store %struct.dtv_frontend_properties* %12, %struct.dtv_frontend_properties** %7, align 8
  %13 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @DVBFE_ALGO_SEARCH_INVALID, align 4
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %24 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %29 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %36 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @STV090x_SEARCH_AUTO, align 4
  %38 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %39 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @STV090x_COLD_SEARCH, align 4
  %41 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %42 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @STV090x_PRERR, align 4
  %44 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %45 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %47 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 10000000
  br i1 %49, label %50, label %55

50:                                               ; preds = %19
  %51 = load i32, i32* @FE_DEBUG, align 4
  %52 = call i32 @dprintk(i32 %51, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %54 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %53, i32 0, i32 2
  store i32 10000000, i32* %54, align 4
  br label %60

55:                                               ; preds = %19
  %56 = load i32, i32* @FE_DEBUG, align 4
  %57 = call i32 @dprintk(i32 %56, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %59 = getelementptr inbounds %struct.stv090x_state, %struct.stv090x_state* %58, i32 0, i32 2
  store i32 5000000, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.stv090x_state*, %struct.stv090x_state** %6, align 8
  %62 = call i64 @stv090x_algo(%struct.stv090x_state* %61)
  %63 = load i64, i64* @STV090x_RANGEOK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @FE_DEBUG, align 4
  %67 = call i32 @dprintk(i32 %66, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @DVBFE_ALGO_SEARCH_SUCCESS, align 4
  store i32 %68, i32* %3, align 4
  br label %73

69:                                               ; preds = %60
  %70 = load i32, i32* @FE_DEBUG, align 4
  %71 = call i32 @dprintk(i32 %70, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32, i32* @DVBFE_ALGO_SEARCH_FAILED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %65, %17
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i64 @stv090x_algo(%struct.stv090x_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
