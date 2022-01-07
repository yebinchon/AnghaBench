; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-fe.c_tda18271_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i64, i32 }

@TDA18271HDC2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18271_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18271_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18271_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 0
  %7 = load %struct.tda18271_priv*, %struct.tda18271_priv** %6, align 8
  store %struct.tda18271_priv* %7, %struct.tda18271_priv** %3, align 8
  %8 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %9 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = call i32 @tda18271_set_standby_mode(%struct.dvb_frontend* %11, i32 0, i32 0, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @tda_fail(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = call i32 @tda18271_ir_cal_init(%struct.dvb_frontend* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @tda_fail(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %34

24:                                               ; preds = %17
  %25 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %26 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TDA18271HDC2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %32 = call i32 @tda18271c2_rf_cal_init(%struct.dvb_frontend* %31)
  br label %33

33:                                               ; preds = %30, %24
  br label %34

34:                                               ; preds = %33, %23, %16
  %35 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %36 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %35, i32 0, i32 1
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tda18271_set_standby_mode(%struct.dvb_frontend*, i32, i32, i32) #1

declare dso_local i64 @tda_fail(i32) #1

declare dso_local i32 @tda18271_ir_cal_init(%struct.dvb_frontend*) #1

declare dso_local i32 @tda18271c2_rf_cal_init(%struct.dvb_frontend*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
