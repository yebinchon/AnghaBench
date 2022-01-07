; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_10__, %struct.tda18271_priv* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.tda18271_priv = type { i32, i32, i32, %struct.tda18271_std_map }
%struct.tda18271_std_map = type { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }
%struct.tda18271_std_map_item = type { i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TDA18271_DIGITAL = common dso_local global i32 0, align 4
@FE_ATSC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"modulation not set!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FE_OFDM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"bandwidth not set!\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"modulation type not supported!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @tda18271_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.tda18271_priv*, align 8
  %7 = alloca %struct.tda18271_std_map*, align 8
  %8 = alloca %struct.tda18271_std_map_item*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  %14 = load %struct.tda18271_priv*, %struct.tda18271_priv** %13, align 8
  store %struct.tda18271_priv* %14, %struct.tda18271_priv** %6, align 8
  %15 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %16 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %15, i32 0, i32 3
  store %struct.tda18271_std_map* %16, %struct.tda18271_std_map** %7, align 8
  %17 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* @TDA18271_DIGITAL, align 4
  %21 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %22 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FE_ATSC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %32 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %42 [
    i32 128, label %36
    i32 129, label %36
    i32 130, label %39
    i32 131, label %39
  ]

36:                                               ; preds = %30, %30
  %37 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %7, align 8
  %38 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %37, i32 0, i32 4
  store %struct.tda18271_std_map_item* %38, %struct.tda18271_std_map_item** %8, align 8
  br label %46

39:                                               ; preds = %30, %30
  %40 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %7, align 8
  %41 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %40, i32 0, i32 3
  store %struct.tda18271_std_map_item* %41, %struct.tda18271_std_map_item** %8, align 8
  br label %46

42:                                               ; preds = %30
  %43 = call i32 @tda_warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %130

46:                                               ; preds = %39, %36
  store i32 6000000, i32* %10, align 4
  br label %80

47:                                               ; preds = %2
  %48 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @FE_OFDM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %47
  %56 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %57 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %70 [
    i32 134, label %61
    i32 133, label %64
    i32 132, label %67
  ]

61:                                               ; preds = %55
  store i32 6000000, i32* %10, align 4
  %62 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %7, align 8
  %63 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %62, i32 0, i32 2
  store %struct.tda18271_std_map_item* %63, %struct.tda18271_std_map_item** %8, align 8
  br label %74

64:                                               ; preds = %55
  store i32 7000000, i32* %10, align 4
  %65 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %7, align 8
  %66 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %65, i32 0, i32 1
  store %struct.tda18271_std_map_item* %66, %struct.tda18271_std_map_item** %8, align 8
  br label %74

67:                                               ; preds = %55
  store i32 8000000, i32* %10, align 4
  %68 = load %struct.tda18271_std_map*, %struct.tda18271_std_map** %7, align 8
  %69 = getelementptr inbounds %struct.tda18271_std_map, %struct.tda18271_std_map* %68, i32 0, i32 0
  store %struct.tda18271_std_map_item* %69, %struct.tda18271_std_map_item** %8, align 8
  br label %74

70:                                               ; preds = %55
  %71 = call i32 @tda_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %130

74:                                               ; preds = %67, %64, %61
  br label %79

75:                                               ; preds = %47
  %76 = call i32 @tda_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %130

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %46
  %81 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %82 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %84, align 8
  %86 = icmp ne i32 (%struct.dvb_frontend.0*)* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %80
  %88 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %91, align 8
  %93 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %94 = bitcast %struct.dvb_frontend* %93 to %struct.dvb_frontend.0*
  %95 = call i32 %92(%struct.dvb_frontend.0* %94)
  br label %96

96:                                               ; preds = %87, %80
  %97 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %98 = load %struct.tda18271_std_map_item*, %struct.tda18271_std_map_item** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @tda18271_tune(%struct.dvb_frontend* %97, %struct.tda18271_std_map_item* %98, i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @tda_fail(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %128

106:                                              ; preds = %96
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %109 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @FE_OFDM, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %119 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  br label %124

123:                                              ; preds = %106
  br label %124

124:                                              ; preds = %123, %117
  %125 = phi i32 [ %122, %117 ], [ 0, %123 ]
  %126 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  %127 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %124, %105
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %75, %70, %42
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @tda_warn(i8*) #1

declare dso_local i32 @tda18271_tune(%struct.dvb_frontend*, %struct.tda18271_std_map_item*, i32, i32) #1

declare dso_local i64 @tda_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
