; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_dvb_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_dvb_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuner_params = type { i32 }
%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { %struct.tunertype*, i32 }
%struct.tunertype = type { i32, i32 }
%struct.dvb_frontend_parameters = type { i32 }

@simple_dvb_configure.t_params = internal global %struct.tuner_params* null, align 8
@.str = private unnamed_addr constant [75 x i8] c"attempt to treat tuner %d (%s) as digital tuner without stepsize defined.\0A\00", align 1
@TUNER_PARAM_TYPE_DIGITAL = common dso_local global i32 0, align 4
@offset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, %struct.dvb_frontend_parameters*)* @simple_dvb_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_dvb_configure(%struct.dvb_frontend* %0, i32* %1, %struct.dvb_frontend_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dvb_frontend_parameters*, align 8
  %8 = alloca %struct.tuner_simple_priv*, align 8
  %9 = alloca %struct.tunertype*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.dvb_frontend_parameters* %2, %struct.dvb_frontend_parameters** %7, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %16, align 8
  store %struct.tuner_simple_priv* %17, %struct.tuner_simple_priv** %8, align 8
  %18 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %19 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %18, i32 0, i32 0
  %20 = load %struct.tunertype*, %struct.tunertype** %19, align 8
  store %struct.tunertype* %20, %struct.tunertype** %9, align 8
  %21 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %22 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 62500
  store i32 %24, i32* %14, align 4
  %25 = load %struct.tunertype*, %struct.tunertype** %9, align 8
  %26 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %3
  %30 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %31 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %8, align 8
  %34 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %33, i32 0, i32 0
  %35 = load %struct.tunertype*, %struct.tunertype** %34, align 8
  %36 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @tuner_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %37)
  store i32 0, i32* %4, align 4
  br label %111

39:                                               ; preds = %3
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %41 = load i32, i32* @TUNER_PARAM_TYPE_DIGITAL, align 4
  %42 = call %struct.tuner_params* @simple_tuner_params(%struct.dvb_frontend* %40, i32 %41)
  store %struct.tuner_params* %42, %struct.tuner_params** @simple_dvb_configure.t_params, align 8
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %44 = load %struct.tuner_params*, %struct.tuner_params** @simple_dvb_configure.t_params, align 8
  %45 = call i32 @simple_config_lookup(%struct.dvb_frontend* %43, %struct.tuner_params* %44, i32* %14, i32* %10, i32* %11)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %111

49:                                               ; preds = %39
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.tuner_params*, %struct.tuner_params** @simple_dvb_configure.t_params, align 8
  %52 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %50, %53
  %55 = mul i32 %54, 62500
  %56 = load i32, i32* @offset, align 4
  %57 = add i32 %55, %56
  %58 = load %struct.tunertype*, %struct.tunertype** %9, align 8
  %59 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 2
  %62 = add i32 %57, %61
  %63 = load %struct.tunertype*, %struct.tunertype** %9, align 8
  %64 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = udiv i32 %62, %65
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = ashr i32 %67, 8
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 255
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %7, align 8
  %84 = call i32 @simple_set_dvb(%struct.dvb_frontend* %81, i32* %82, %struct.dvb_frontend_parameters* %83)
  %85 = load %struct.tunertype*, %struct.tunertype** %9, align 8
  %86 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @tuner_dbg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88, i32 %91, i32 %94, i32 %97, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.tunertype*, %struct.tunertype** %9, align 8
  %104 = getelementptr inbounds %struct.tunertype, %struct.tunertype* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = load %struct.tuner_params*, %struct.tuner_params** @simple_dvb_configure.t_params, align 8
  %108 = getelementptr inbounds %struct.tuner_params, %struct.tuner_params* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %106, %109
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %49, %48, %29
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @tuner_err(i8*, i32, i32) #1

declare dso_local %struct.tuner_params* @simple_tuner_params(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @simple_config_lookup(%struct.dvb_frontend*, %struct.tuner_params*, i32*, i32*, i32*) #1

declare dso_local i32 @simple_set_dvb(%struct.dvb_frontend*, i32*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
