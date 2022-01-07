; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_tune.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib7000m_state* }
%struct.dib7000m_state = type { i64 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DIB7000M_POWER_COR4_CRY_ESRAM_MOUT_NUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @dib7000m_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_tune(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.dib7000m_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib7000m_state*, %struct.dib7000m_state** %10, align 8
  store %struct.dib7000m_state* %11, %struct.dib7000m_state** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %13 = icmp ne %struct.dvb_frontend_parameters* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %16 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %17 = call i32 @dib7000m_set_channel(%struct.dib7000m_state* %15, %struct.dvb_frontend_parameters* %16, i32 0)
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %126

21:                                               ; preds = %14
  %22 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %23 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %22, i32 898, i32 16384)
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %27 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %26, i32 898, i32 0)
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = call i32 @msleep(i32 45)
  %31 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %32 = load i32, i32* @DIB7000M_POWER_COR4_CRY_ESRAM_MOUT_NUD, align 4
  %33 = call i32 @dib7000m_set_power_mode(%struct.dib7000m_state* %31, i32 %32)
  %34 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %35 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %34, i32 29, i32 4211)
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %39 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %21
  %43 = call i32 @msleep(i32 200)
  br label %44

44:                                               ; preds = %42, %21
  store i32 1664, i32* %8, align 4
  %45 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %56 [
    i32 130, label %50
    i32 129, label %53
    i32 128, label %57
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, 28672
  store i32 %52, i32* %8, align 4
  br label %60

53:                                               ; preds = %44
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, 32768
  store i32 %55, i32* %8, align 4
  br label %60

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %44, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, 36864
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %53, %50
  %61 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %61, i32 26, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %66 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %77 [
    i32 130, label %71
    i32 129, label %74
    i32 128, label %78
  ]

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, 6
  store i32 %73, i32* %8, align 4
  br label %81

74:                                               ; preds = %60
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, 7
  store i32 %76, i32* %8, align 4
  br label %81

77:                                               ; preds = %60
  br label %78

78:                                               ; preds = %60, %77
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, 8
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %78, %74, %71
  %82 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %82, i32 32, i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %87 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %88 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %98 [
    i32 130, label %92
    i32 129, label %95
    i32 128, label %99
  ]

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %93, 6
  store i32 %94, i32* %8, align 4
  br label %102

95:                                               ; preds = %81
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, 7
  store i32 %97, i32* %8, align 4
  br label %102

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %81, %98
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, 8
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %95, %92
  %103 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @dib7000m_write_word(%struct.dib7000m_state* %103, i32 33, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %7, align 4
  %108 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %109 = call i32 @dib7000m_read_word(%struct.dib7000m_state* %108, i32 535)
  %110 = ashr i32 %109, 6
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %102
  %114 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %115 = call i32 @dib7000m_update_timf(%struct.dib7000m_state* %114)
  br label %116

116:                                              ; preds = %113, %102
  %117 = load %struct.dib7000m_state*, %struct.dib7000m_state** %6, align 8
  %118 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %119 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @BANDWIDTH_TO_KHZ(i32 %122)
  %124 = call i32 @dib7000m_set_bandwidth(%struct.dib7000m_state* %117, i32 %123)
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %116, %18
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @dib7000m_set_channel(%struct.dib7000m_state*, %struct.dvb_frontend_parameters*, i32) #1

declare dso_local i32 @dib7000m_write_word(%struct.dib7000m_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib7000m_set_power_mode(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_read_word(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @dib7000m_update_timf(%struct.dib7000m_state*) #1

declare dso_local i32 @dib7000m_set_bandwidth(%struct.dib7000m_state*, i32) #1

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
