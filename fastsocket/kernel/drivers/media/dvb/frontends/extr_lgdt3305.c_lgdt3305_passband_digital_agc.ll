; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_passband_digital_agc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_passband_digital_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"agc ref: 0x%04x\0A\00", align 1
@LGDT3305_DGTL_AGC_REF_1 = common dso_local global i32 0, align 4
@LGDT3305_DGTL_AGC_REF_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dvb_frontend_parameters*)* @lgdt3305_passband_digital_agc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_passband_digital_agc(%struct.lgdt3305_state* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %7 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %15 [
    i32 128, label %12
    i32 129, label %13
    i32 130, label %14
  ]

12:                                               ; preds = %2
  store i32 12996, i32* %6, align 4
  br label %18

13:                                               ; preds = %2
  store i32 10752, i32* %6, align 4
  br label %18

14:                                               ; preds = %2
  store i32 10880, i32* %6, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %31

18:                                               ; preds = %14, %13, %12
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @lg_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %22 = load i32, i32* @LGDT3305_DGTL_AGC_REF_1, align 4
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %21, i32 %22, i32 %24)
  %26 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %27 = load i32, i32* @LGDT3305_DGTL_AGC_REF_2, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 255
  %30 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %26, i32 %27, i32 %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %18, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @lg_dbg(i8*, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
