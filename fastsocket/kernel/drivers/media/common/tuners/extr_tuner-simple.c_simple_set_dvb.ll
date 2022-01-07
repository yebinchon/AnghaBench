; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_set_dvb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tuner-simple.c_simple_set_dvb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tuner_simple_priv* }
%struct.tuner_simple_priv = type { i32, i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BANDWIDTH_8_MHZ = common dso_local global i32 0, align 4
@dtv_input = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i32*, %struct.dvb_frontend_parameters*)* @simple_set_dvb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simple_set_dvb(%struct.dvb_frontend* %0, i32* %1, %struct.dvb_frontend_parameters* %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dvb_frontend_parameters*, align 8
  %7 = alloca %struct.tuner_simple_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.dvb_frontend_parameters* %2, %struct.dvb_frontend_parameters** %6, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %10, align 8
  store %struct.tuner_simple_priv* %11, %struct.tuner_simple_priv** %7, align 8
  %12 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %13 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %99 [
    i32 131, label %15
    i32 132, label %15
    i32 130, label %34
    i32 129, label %66
    i32 133, label %66
  ]

15:                                               ; preds = %3, %3
  %16 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @BANDWIDTH_8_MHZ, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 158870000
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 8
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %23, %15
  br label %100

34:                                               ; preds = %3
  %35 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 161000000
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %47

40:                                               ; preds = %34
  %41 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 444000000
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 2, i32 4
  br label %47

47:                                               ; preds = %40, %39
  %48 = phi i32 [ 1, %39 ], [ %46, %40 ]
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BANDWIDTH_8_MHZ, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 8
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %47
  br label %100

66:                                               ; preds = %3, %3
  %67 = load i32*, i32** @dtv_input, align 8
  %68 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %69 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load i32*, i32** @dtv_input, align 8
  %76 = load %struct.tuner_simple_priv*, %struct.tuner_simple_priv** %7, align 8
  %77 = getelementptr inbounds %struct.tuner_simple_priv, %struct.tuner_simple_priv* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  br label %91

81:                                               ; preds = %66
  %82 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %6, align 8
  %83 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %89 [
    i32 134, label %87
    i32 135, label %87
    i32 128, label %88
  ]

87:                                               ; preds = %81, %81
  store i32 1, i32* %8, align 4
  br label %90

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %81, %88
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %87
  br label %91

91:                                               ; preds = %90, %74
  %92 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @simple_set_rf_input(%struct.dvb_frontend* %92, i32* %94, i32* %96, i32 %97)
  br label %100

99:                                               ; preds = %3
  br label %100

100:                                              ; preds = %99, %91, %65, %33
  ret void
}

declare dso_local i32 @simple_set_rf_input(%struct.dvb_frontend*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
