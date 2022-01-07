; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i32, i32 }

@INVERSION_AUTO = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_16 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_8 = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_4 = common dso_local global i32 0, align 4
@QPSK = common dso_local global i32 0, align 4
@QAM_16 = common dso_local global i32 0, align 4
@QAM_64 = common dso_local global i32 0, align 4
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7000p_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib7000p_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib7000p_state*, %struct.dib7000p_state** %8, align 8
  store %struct.dib7000p_state* %9, %struct.dib7000p_state** %5, align 8
  %10 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %11 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %10, i32 463)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @INVERSION_AUTO, align 4
  %13 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.dib7000p_state*, %struct.dib7000p_state** %5, align 8
  %16 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BANDWIDTH_TO_INDEX(i32 %17)
  %19 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  store i32 %18, i32* %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 3
  switch i32 %25, label %38 [
    i32 0, label %26
    i32 1, label %32
  ]

26:                                               ; preds = %2
  %27 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %28 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  store i32 %27, i32* %31, align 4
  br label %38

32:                                               ; preds = %2
  %33 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %2, %32, %26
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 3
  switch i32 %40, label %65 [
    i32 0, label %41
    i32 1, label %47
    i32 2, label %53
    i32 3, label %59
  ]

41:                                               ; preds = %38
  %42 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %43 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i32 %42, i32* %46, align 8
  br label %65

47:                                               ; preds = %38
  %48 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %49 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %50 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 4
  store i32 %48, i32* %52, align 8
  br label %65

53:                                               ; preds = %38
  %54 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %55 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %56 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 4
  store i32 %54, i32* %58, align 8
  br label %65

59:                                               ; preds = %38
  %60 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %61 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  store i32 %60, i32* %64, align 8
  br label %65

65:                                               ; preds = %38, %59, %53, %47, %41
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 14
  %68 = and i32 %67, 3
  switch i32 %68, label %82 [
    i32 0, label %69
    i32 1, label %75
    i32 2, label %81
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* @QPSK, align 4
  %71 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %72 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  store i32 %70, i32* %74, align 4
  br label %88

75:                                               ; preds = %65
  %76 = load i32, i32* @QAM_16, align 4
  %77 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %78 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  store i32 %76, i32* %80, align 4
  br label %88

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %65, %81
  %83 = load i32, i32* @QAM_64, align 4
  %84 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %85 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %75, %69
  %89 = load i32, i32* @HIERARCHY_NONE, align 4
  %90 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %91 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = ashr i32 %94, 5
  %96 = and i32 %95, 7
  switch i32 %96, label %122 [
    i32 1, label %97
    i32 2, label %103
    i32 3, label %109
    i32 5, label %115
    i32 7, label %121
  ]

97:                                               ; preds = %88
  %98 = load i8*, i8** @FEC_1_2, align 8
  %99 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %100 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i8* %98, i8** %102, align 8
  br label %128

103:                                              ; preds = %88
  %104 = load i8*, i8** @FEC_2_3, align 8
  %105 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %106 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i8* %104, i8** %108, align 8
  br label %128

109:                                              ; preds = %88
  %110 = load i8*, i8** @FEC_3_4, align 8
  %111 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %112 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i8* %110, i8** %114, align 8
  br label %128

115:                                              ; preds = %88
  %116 = load i8*, i8** @FEC_5_6, align 8
  %117 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %118 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i8* %116, i8** %120, align 8
  br label %128

121:                                              ; preds = %88
  br label %122

122:                                              ; preds = %88, %121
  %123 = load i8*, i8** @FEC_7_8, align 8
  %124 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %125 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  store i8* %123, i8** %127, align 8
  br label %128

128:                                              ; preds = %122, %115, %109, %103, %97
  %129 = load i32, i32* %6, align 4
  %130 = ashr i32 %129, 2
  %131 = and i32 %130, 7
  switch i32 %131, label %157 [
    i32 1, label %132
    i32 2, label %138
    i32 3, label %144
    i32 5, label %150
    i32 7, label %156
  ]

132:                                              ; preds = %128
  %133 = load i8*, i8** @FEC_1_2, align 8
  %134 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %135 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i8* %133, i8** %137, align 8
  br label %163

138:                                              ; preds = %128
  %139 = load i8*, i8** @FEC_2_3, align 8
  %140 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %141 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i8* %139, i8** %143, align 8
  br label %163

144:                                              ; preds = %128
  %145 = load i8*, i8** @FEC_3_4, align 8
  %146 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %147 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  store i8* %145, i8** %149, align 8
  br label %163

150:                                              ; preds = %128
  %151 = load i8*, i8** @FEC_5_6, align 8
  %152 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %153 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  store i8* %151, i8** %155, align 8
  br label %163

156:                                              ; preds = %128
  br label %157

157:                                              ; preds = %128, %156
  %158 = load i8*, i8** @FEC_7_8, align 8
  %159 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %160 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  store i8* %158, i8** %162, align 8
  br label %163

163:                                              ; preds = %157, %150, %144, %138, %132
  ret i32 0
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
