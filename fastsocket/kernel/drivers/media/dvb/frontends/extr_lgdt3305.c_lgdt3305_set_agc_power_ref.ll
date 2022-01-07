; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_set_agc_power_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_set_agc_power_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"set manual mode: 0x%04x\0A\00", align 1
@LGDT3305_AGC_CTRL_1 = common dso_local global i32 0, align 4
@LGDT3305_AGC_POWER_REF_1 = common dso_local global i32 0, align 4
@LGDT3305_AGC_POWER_REF_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dvb_frontend_parameters*)* @lgdt3305_set_agc_power_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_set_agc_power_ref(%struct.lgdt3305_state* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %54 [
    i32 128, label %12
    i32 129, label %26
    i32 130, label %40
  ]

12:                                               ; preds = %2
  %13 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %14 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %21 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %19, %12
  br label %57

26:                                               ; preds = %2
  %27 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %28 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %35 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %26
  br label %57

40:                                               ; preds = %2
  %41 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %42 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %49 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %47, %40
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %79

57:                                               ; preds = %53, %39, %25
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @lg_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %64 = load i32, i32* @LGDT3305_AGC_CTRL_1, align 4
  %65 = call i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state* %63, i32 %64, i32 3, i32 1)
  %66 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %67 = load i32, i32* @LGDT3305_AGC_POWER_REF_1, align 4
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 255, %69
  %71 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %66, i32 %67, i32 %70)
  %72 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %73 = load i32, i32* @LGDT3305_AGC_POWER_REF_2, align 4
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %74, 0
  %76 = and i32 255, %75
  %77 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %72, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %60, %57
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @lg_dbg(i8*, i32) #1

declare dso_local i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state*, i32, i32, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
