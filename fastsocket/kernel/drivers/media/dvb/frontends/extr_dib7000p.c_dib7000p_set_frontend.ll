; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_set_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_7__, %struct.dib7000p_state* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.0 = type opaque
%struct.dib7000p_state = type { %struct.TYPE_10__, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64 }

@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@buggy_sfn_workaround = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_AUTO = common dso_local global i64 0, align 8
@GUARD_INTERVAL_AUTO = common dso_local global i64 0, align 8
@QAM_AUTO = common dso_local global i64 0, align 8
@FEC_AUTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"autosearch returns: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7000p_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_set_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dib7000p_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1
  %13 = load %struct.dib7000p_state*, %struct.dib7000p_state** %12, align 8
  store %struct.dib7000p_state* %13, %struct.dib7000p_state** %6, align 8
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %15 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %16 = call i32 @dib7000p_set_output_mode(%struct.dib7000p_state* %14, i32 %15)
  %17 = load i32, i32* @buggy_sfn_workaround, align 4
  %18 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %19 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %23, align 8
  %25 = icmp ne i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.0*, %struct.dvb_frontend_parameters*)** %30, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = bitcast %struct.dvb_frontend* %32 to %struct.dvb_frontend.0*
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %35 = call i32 %31(%struct.dvb_frontend.0* %33, %struct.dvb_frontend_parameters* %34)
  br label %36

36:                                               ; preds = %26, %2
  %37 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %38 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %49, %36
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %41 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %42 = call i32 @dib7000p_agc_startup(%struct.dvb_frontend* %40, %struct.dvb_frontend_parameters* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @msleep(i32 %46)
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %39, label %52

52:                                               ; preds = %49
  %53 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TRANSMISSION_MODE_AUTO, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %84, label %60

60:                                               ; preds = %52
  %61 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GUARD_INTERVAL_AUTO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %84, label %68

68:                                               ; preds = %60
  %69 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @QAM_AUTO, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @FEC_AUTO, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %76, %68, %60, %52
  store i32 800, i32* %9, align 4
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %86 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %87 = call i32 @dib7000p_autosearch_start(%struct.dvb_frontend* %85, %struct.dvb_frontend_parameters* %86)
  br label %88

88:                                               ; preds = %99, %84
  %89 = call i32 @msleep(i32 1)
  %90 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %91 = call i32 @dib7000p_autosearch_is_irq(%struct.dvb_frontend* %90)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  %98 = icmp ne i32 %96, 0
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ false, %92 ], [ %98, %95 ]
  br i1 %100, label %88, label %101

101:                                              ; preds = %99
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %101
  store i32 0, i32* %3, align 4
  br label %125

110:                                              ; preds = %106
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %112 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %113 = call i32 @dib7000p_get_frontend(%struct.dvb_frontend* %111, %struct.dvb_frontend_parameters* %112)
  br label %114

114:                                              ; preds = %110, %76
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %116 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %117 = call i32 @dib7000p_tune(%struct.dvb_frontend* %115, %struct.dvb_frontend_parameters* %116)
  store i32 %117, i32* %8, align 4
  %118 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %119 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %120 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @dib7000p_set_output_mode(%struct.dib7000p_state* %118, i32 %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %114, %109
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @dib7000p_set_output_mode(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_agc_startup(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib7000p_autosearch_start(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @dib7000p_autosearch_is_irq(%struct.dvb_frontend*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib7000p_get_frontend(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

declare dso_local i32 @dib7000p_tune(%struct.dvb_frontend*, %struct.dvb_frontend_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
