; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_rfagc_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_rfagc_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LGDT3304 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"agcdelay: 0x%04x, rfbw: 0x%04x\0A\00", align 1
@LGDT3305_AGC_DELAY_PT_1 = common dso_local global i32 0, align 4
@LGDT3305_AGC_DELAY_PT_2 = common dso_local global i32 0, align 4
@LGDT3305_RFAGC_LOOP_FLTR_BW_1 = common dso_local global i32 0, align 4
@LGDT3305_RFAGC_LOOP_FLTR_BW_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ifbw: 0x%04x\0A\00", align 1
@LGDT3305_IFBW_1 = common dso_local global i32 0, align 4
@LGDT3305_IFBW_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dvb_frontend_parameters*)* @lgdt3305_rfagc_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_rfagc_loop(%struct.lgdt3305_state* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %9 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %26 [
    i32 128, label %14
    i32 129, label %15
    i32 130, label %15
  ]

14:                                               ; preds = %2
  store i32 1216, i32* %8, align 4
  store i32 32768, i32* %7, align 4
  store i32 32768, i32* %6, align 4
  br label %29

15:                                               ; preds = %2, %2
  store i32 1131, i32* %8, align 4
  store i32 34953, i32* %7, align 4
  %16 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %17 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @LGDT3304, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 26214, i32* %6, align 4
  br label %25

24:                                               ; preds = %15
  store i32 34952, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %74

29:                                               ; preds = %25, %14
  %30 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %31 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i8*, i32, ...) @lg_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %41 = load i32, i32* @LGDT3305_AGC_DELAY_PT_1, align 4
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 8
  %44 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %40, i32 %41, i32 %43)
  %45 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %46 = load i32, i32* @LGDT3305_AGC_DELAY_PT_2, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 255
  %49 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %45, i32 %46, i32 %48)
  %50 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %51 = load i32, i32* @LGDT3305_RFAGC_LOOP_FLTR_BW_1, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 8
  %54 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %50, i32 %51, i32 %53)
  %55 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %56 = load i32, i32* @LGDT3305_RFAGC_LOOP_FLTR_BW_2, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %55, i32 %56, i32 %58)
  br label %73

60:                                               ; preds = %29
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, i32, ...) @lg_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %64 = load i32, i32* @LGDT3305_IFBW_1, align 4
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 8
  %67 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %63, i32 %64, i32 %66)
  %68 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %69 = load i32, i32* @LGDT3305_IFBW_2, align 4
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 255
  %72 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %68, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %60, %36
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %26
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @lg_dbg(i8*, i32, ...) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
