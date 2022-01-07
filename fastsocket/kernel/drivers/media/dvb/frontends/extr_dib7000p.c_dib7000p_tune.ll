; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000p_state* }
%struct.dib7000p_state = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"SFN workaround is active\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7000p_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000p_tune(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dib7000p_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib7000p_state*, %struct.dib7000p_state** %9, align 8
  store %struct.dib7000p_state* %10, %struct.dib7000p_state** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %12 = icmp ne %struct.dvb_frontend_parameters* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %15 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %16 = call i32 @dib7000p_set_channel(%struct.dib7000p_state* %14, %struct.dvb_frontend_parameters* %15, i32 0)
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %162

20:                                               ; preds = %13
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %22 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %21, i32 770, i32 16384)
  %23 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %24 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %23, i32 770, i32 0)
  %25 = call i32 @msleep(i32 45)
  store i32 4211, i32* %7, align 4
  %26 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %27 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, 512
  store i32 %33, i32* %7, align 4
  %34 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %35 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %34, i32 166, i32 16384)
  br label %39

36:                                               ; preds = %20
  %37 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %38 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %37, i32 166, i32 0)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %40, i32 29, i32 %41)
  %43 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %44 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @msleep(i32 200)
  br label %49

49:                                               ; preds = %47, %39
  store i32 1664, i32* %7, align 4
  %50 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %61 [
    i32 130, label %55
    i32 129, label %58
    i32 128, label %62
  ]

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, 28672
  store i32 %57, i32* %7, align 4
  br label %65

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, 32768
  store i32 %60, i32* %7, align 4
  br label %65

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %49, %61
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, 36864
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %58, %55
  %66 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %66, i32 26, i32 %67)
  store i32 0, i32* %7, align 4
  %69 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %70 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %80 [
    i32 130, label %74
    i32 129, label %77
    i32 128, label %81
  ]

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, 6
  store i32 %76, i32* %7, align 4
  br label %84

77:                                               ; preds = %65
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, 7
  store i32 %79, i32* %7, align 4
  br label %84

80:                                               ; preds = %65
  br label %81

81:                                               ; preds = %65, %80
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, 8
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %81, %77, %74
  %85 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %85, i32 32, i32 %86)
  store i32 0, i32* %7, align 4
  %88 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %89 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %99 [
    i32 130, label %93
    i32 129, label %96
    i32 128, label %100
  ]

93:                                               ; preds = %84
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, 6
  store i32 %95, i32* %7, align 4
  br label %103

96:                                               ; preds = %84
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, 7
  store i32 %98, i32* %7, align 4
  br label %103

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %84, %99
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, 8
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %96, %93
  %104 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %104, i32 33, i32 %105)
  %107 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %108 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %107, i32 509)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = ashr i32 %109, 6
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %126, label %113

113:                                              ; preds = %103
  %114 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %115 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %114, i32 771)
  store i32 %115, i32* %7, align 4
  %116 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, 2
  %119 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %116, i32 771, i32 %118)
  %120 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %120, i32 771, i32 %121)
  %123 = call i32 @msleep(i32 10)
  %124 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %125 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %124, i32 509)
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %113, %103
  %127 = load i32, i32* %7, align 4
  %128 = ashr i32 %127, 6
  %129 = and i32 %128, 1
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %133 = call i32 @dib7000p_update_timf(%struct.dib7000p_state* %132)
  br label %134

134:                                              ; preds = %131, %126
  %135 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %136 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %134
  %141 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %142 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %143 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sdiv i32 %144, 1000
  %146 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %147 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @BANDWIDTH_TO_KHZ(i32 %150)
  %152 = call i32 @dib7000p_spur_protect(%struct.dib7000p_state* %141, i32 %145, i32 %151)
  br label %153

153:                                              ; preds = %140, %134
  %154 = load %struct.dib7000p_state*, %struct.dib7000p_state** %6, align 8
  %155 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %156 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @BANDWIDTH_TO_KHZ(i32 %159)
  %161 = call i32 @dib7000p_set_bandwidth(%struct.dib7000p_state* %154, i32 %160)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %153, %17
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @dib7000p_set_channel(%struct.dib7000p_state*, %struct.dvb_frontend_parameters*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_update_timf(%struct.dib7000p_state*) #1

declare dso_local i32 @dib7000p_spur_protect(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib7000p_set_bandwidth(%struct.dib7000p_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
