; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_get_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib3000mc_state* }
%struct.dib3000mc_state = type { i32 }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib3000mc_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mc_get_frontend(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dib3000mc_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %8, align 8
  store %struct.dib3000mc_state* %9, %struct.dib3000mc_state** %5, align 8
  %10 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %11 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %10, i32 458)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @INVERSION_AUTO, align 4
  %13 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %14 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %5, align 8
  %16 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  store i32 %17, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 1
  switch i32 %24, label %37 [
    i32 0, label %25
    i32 1, label %31
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %27 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  store i32 %26, i32* %30, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %33 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %2, %31, %25
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 3
  switch i32 %39, label %64 [
    i32 0, label %40
    i32 1, label %46
    i32 2, label %52
    i32 3, label %58
  ]

40:                                               ; preds = %37
  %41 = load i32, i32* @GUARD_INTERVAL_1_32, align 4
  %42 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %43 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  store i32 %41, i32* %45, align 8
  br label %64

46:                                               ; preds = %37
  %47 = load i32, i32* @GUARD_INTERVAL_1_16, align 4
  %48 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  store i32 %47, i32* %51, align 8
  br label %64

52:                                               ; preds = %37
  %53 = load i32, i32* @GUARD_INTERVAL_1_8, align 4
  %54 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %55 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 8
  br label %64

58:                                               ; preds = %37
  %59 = load i32, i32* @GUARD_INTERVAL_1_4, align 4
  %60 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %61 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i32 %59, i32* %63, align 8
  br label %64

64:                                               ; preds = %37, %58, %52, %46, %40
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 13
  %67 = and i32 %66, 3
  switch i32 %67, label %81 [
    i32 0, label %68
    i32 1, label %74
    i32 2, label %80
  ]

68:                                               ; preds = %64
  %69 = load i32, i32* @QPSK, align 4
  %70 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  store i32 %69, i32* %73, align 4
  br label %87

74:                                               ; preds = %64
  %75 = load i32, i32* @QAM_16, align 4
  %76 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %77 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 3
  store i32 %75, i32* %79, align 4
  br label %87

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %64, %80
  %82 = load i32, i32* @QAM_64, align 4
  %83 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %74, %68
  %88 = load i32, i32* @HIERARCHY_NONE, align 4
  %89 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %90 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i32 %88, i32* %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 5
  %95 = and i32 %94, 7
  switch i32 %95, label %121 [
    i32 1, label %96
    i32 2, label %102
    i32 3, label %108
    i32 5, label %114
    i32 7, label %120
  ]

96:                                               ; preds = %87
  %97 = load i8*, i8** @FEC_1_2, align 8
  %98 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %99 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  store i8* %97, i8** %101, align 8
  br label %127

102:                                              ; preds = %87
  %103 = load i8*, i8** @FEC_2_3, align 8
  %104 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %105 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i8* %103, i8** %107, align 8
  br label %127

108:                                              ; preds = %87
  %109 = load i8*, i8** @FEC_3_4, align 8
  %110 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %111 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i8* %109, i8** %113, align 8
  br label %127

114:                                              ; preds = %87
  %115 = load i8*, i8** @FEC_5_6, align 8
  %116 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %117 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i8* %115, i8** %119, align 8
  br label %127

120:                                              ; preds = %87
  br label %121

121:                                              ; preds = %87, %120
  %122 = load i8*, i8** @FEC_7_8, align 8
  %123 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %124 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i8* %122, i8** %126, align 8
  br label %127

127:                                              ; preds = %121, %114, %108, %102, %96
  %128 = load i32, i32* %6, align 4
  %129 = ashr i32 %128, 2
  %130 = and i32 %129, 7
  switch i32 %130, label %156 [
    i32 1, label %131
    i32 2, label %137
    i32 3, label %143
    i32 5, label %149
    i32 7, label %155
  ]

131:                                              ; preds = %127
  %132 = load i8*, i8** @FEC_1_2, align 8
  %133 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %134 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i8* %132, i8** %136, align 8
  br label %162

137:                                              ; preds = %127
  %138 = load i8*, i8** @FEC_2_3, align 8
  %139 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %140 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  store i8* %138, i8** %142, align 8
  br label %162

143:                                              ; preds = %127
  %144 = load i8*, i8** @FEC_3_4, align 8
  %145 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %146 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  store i8* %144, i8** %148, align 8
  br label %162

149:                                              ; preds = %127
  %150 = load i8*, i8** @FEC_5_6, align 8
  %151 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %152 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i8* %150, i8** %154, align 8
  br label %162

155:                                              ; preds = %127
  br label %156

156:                                              ; preds = %127, %155
  %157 = load i8*, i8** @FEC_7_8, align 8
  %158 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %159 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  store i8* %157, i8** %161, align 8
  br label %162

162:                                              ; preds = %156, %149, %143, %137, %131
  ret i32 0
}

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
