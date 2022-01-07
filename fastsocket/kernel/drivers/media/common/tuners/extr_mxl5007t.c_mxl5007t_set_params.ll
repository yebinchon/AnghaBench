; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5007t.c_mxl5007t_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mxl5007t.c_mxl5007t_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_10__, %struct.mxl5007t_state* }
%struct.TYPE_10__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_7__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_7__ = type { i64 }
%struct.mxl5007t_state = type { i32, i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@FE_ATSC = common dso_local global i64 0, align 8
@MxL_MODE_ATSC = common dso_local global i32 0, align 4
@MxL_MODE_CABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"modulation not set!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MxL_BW_6MHz = common dso_local global i32 0, align 4
@FE_OFDM = common dso_local global i64 0, align 8
@MxL_BW_7MHz = common dso_local global i32 0, align 4
@MxL_BW_8MHz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bandwidth not set!\00", align 1
@MxL_MODE_DVBT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"modulation type not supported!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @mxl5007t_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl5007t_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.mxl5007t_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %12, align 8
  store %struct.mxl5007t_state* %13, %struct.mxl5007t_state** %6, align 8
  %14 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FE_ATSC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %26 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %34 [
    i32 128, label %30
    i32 129, label %30
    i32 130, label %32
    i32 131, label %32
  ]

30:                                               ; preds = %24, %24
  %31 = load i32, i32* @MxL_MODE_ATSC, align 4
  store i32 %31, i32* %8, align 4
  br label %38

32:                                               ; preds = %24, %24
  %33 = load i32, i32* @MxL_MODE_CABLE, align 4
  store i32 %33, i32* %8, align 4
  br label %38

34:                                               ; preds = %24
  %35 = call i32 @mxl_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %146

38:                                               ; preds = %32, %30
  %39 = load i32, i32* @MxL_BW_6MHz, align 4
  store i32 %39, i32* %7, align 4
  br label %71

40:                                               ; preds = %2
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FE_OFDM, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %40
  %49 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %60 [
    i32 134, label %54
    i32 133, label %56
    i32 132, label %58
  ]

54:                                               ; preds = %48
  %55 = load i32, i32* @MxL_BW_6MHz, align 4
  store i32 %55, i32* %7, align 4
  br label %64

56:                                               ; preds = %48
  %57 = load i32, i32* @MxL_BW_7MHz, align 4
  store i32 %57, i32* %7, align 4
  br label %64

58:                                               ; preds = %48
  %59 = load i32, i32* @MxL_BW_8MHz, align 4
  store i32 %59, i32* %7, align 4
  br label %64

60:                                               ; preds = %48
  %61 = call i32 @mxl_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %146

64:                                               ; preds = %58, %56, %54
  %65 = load i32, i32* @MxL_MODE_DVBT, align 4
  store i32 %65, i32* %8, align 4
  br label %70

66:                                               ; preds = %40
  %67 = call i32 @mxl_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %146

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70, %38
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %73 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %74, align 8
  %76 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %79 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %80, align 8
  %82 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %83 = bitcast %struct.dvb_frontend* %82 to %struct.dvb_frontend.0*
  %84 = call i32 %81(%struct.dvb_frontend.0* %83, i32 1)
  br label %85

85:                                               ; preds = %77, %71
  %86 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %87 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %86, i32 0, i32 1
  %88 = call i32 @mutex_lock(i32* %87)
  %89 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @mxl5007t_tuner_init(%struct.mxl5007t_state* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @mxl_fail(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %127

96:                                               ; preds = %85
  %97 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @mxl5007t_tuner_rf_tune(%struct.mxl5007t_state* %97, i32 %98, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @mxl_fail(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %127

105:                                              ; preds = %96
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %108 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %110 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @FE_OFDM, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %105
  %117 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %118 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  br label %123

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %116
  %124 = phi i32 [ %121, %116 ], [ 0, %122 ]
  %125 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %126 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %104, %95
  %128 = load %struct.mxl5007t_state*, %struct.mxl5007t_state** %6, align 8
  %129 = getelementptr inbounds %struct.mxl5007t_state, %struct.mxl5007t_state* %128, i32 0, i32 1
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %132 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %133, align 8
  %135 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %127
  %137 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %138 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %139, align 8
  %141 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %142 = bitcast %struct.dvb_frontend* %141 to %struct.dvb_frontend.0*
  %143 = call i32 %140(%struct.dvb_frontend.0* %142, i32 0)
  br label %144

144:                                              ; preds = %136, %127
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %66, %60, %34
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @mxl_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mxl5007t_tuner_init(%struct.mxl5007t_state*, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl5007t_tuner_rf_tune(%struct.mxl5007t_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
