; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_dvb_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_dvb_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.tuner_simple_priv* }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_4__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.tuner_simple_priv = type { i8*, i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.dvb_frontend_parameters = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @simple_dvb_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_dvb_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.tuner_simple_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %12, align 8
  store %struct.tuner_simple_priv* %13, %struct.tuner_simple_priv** %6, align 8
  %14 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %15 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %84

22:                                               ; preds = %2
  %23 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %24 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %27 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %30 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %32 = call i32 @simple_dvb_calc_regs(%struct.dvb_frontend* %29, %struct.dvb_frontend_parameters* %30, i32* %31, i32 5)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 5
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %76

36:                                               ; preds = %22
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %38 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %40, align 8
  %42 = icmp ne i32 (%struct.dvb_frontend.1*)* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %47, align 8
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %50 = bitcast %struct.dvb_frontend* %49 to %struct.dvb_frontend.1*
  %51 = call i32 %48(%struct.dvb_frontend.1* %50)
  br label %52

52:                                               ; preds = %43, %36
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %61, align 8
  %63 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %64 = bitcast %struct.dvb_frontend* %63 to %struct.dvb_frontend.0*
  %65 = call i32 %62(%struct.dvb_frontend.0* %64, i32 1)
  br label %66

66:                                               ; preds = %58, %52
  %67 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %68 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %67, i32 0, i32 2
  %69 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_6__* %68, i32* %70, i32 4)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 4
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %84

76:                                               ; preds = %74, %35
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %79 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %6, align 8
  %82 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %76, %75, %19
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @simple_dvb_calc_regs(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*, i32*, i32) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
