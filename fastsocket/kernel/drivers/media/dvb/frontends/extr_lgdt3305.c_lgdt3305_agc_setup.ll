; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_agc_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_agc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgdt3305_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.dvb_frontend_parameters = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"lockdten = %d, acqen = %d\0A\00", align 1
@LGDT3305_AGC_CTRL_4 = common dso_local global i32 0, align 4
@LGDT3305_AGC_CTRL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgdt3305_state*, %struct.dvb_frontend_parameters*)* @lgdt3305_agc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3305_agc_setup(%struct.lgdt3305_state* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lgdt3305_state*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lgdt3305_state* %0, %struct.lgdt3305_state** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %8 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %15 [
    i32 128, label %13
    i32 129, label %14
    i32 130, label %14
  ]

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %18

14:                                               ; preds = %2, %2
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @lg_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %23 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %47 [
    i32 132, label %27
    i32 131, label %36
  ]

27:                                               ; preds = %18
  %28 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 1
  %31 = or i32 225, %30
  %32 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %28, i32 788, i32 %31)
  %33 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state* %33, i32 782, i32 2, i32 %34)
  br label %50

36:                                               ; preds = %18
  %37 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %38 = load i32, i32* @LGDT3305_AGC_CTRL_4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 1
  %41 = or i32 225, %40
  %42 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %37, i32 %38, i32 %41)
  %43 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %44 = load i32, i32* @LGDT3305_AGC_CTRL_1, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state* %43, i32 %44, i32 2, i32 %45)
  br label %50

47:                                               ; preds = %18
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %36, %27
  %51 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %4, align 8
  %52 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %53 = call i32 @lgdt3305_rfagc_loop(%struct.lgdt3305_state* %51, %struct.dvb_frontend_parameters* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %47, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @lg_dbg(i8*, i32, i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

declare dso_local i32 @lgdt3305_set_reg_bit(%struct.lgdt3305_state*, i32, i32, i32) #1

declare dso_local i32 @lgdt3305_rfagc_loop(%struct.lgdt3305_state*, %struct.dvb_frontend_parameters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
