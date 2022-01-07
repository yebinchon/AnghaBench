; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_charge_pump_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_charge_pump_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8* }

@TDA18271_CAL_PLL = common dso_local global i32 0, align 4
@R_EB7 = common dso_local global i32 0, align 4
@R_EB4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_charge_pump_source(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tda18271_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.tda18271_priv*, %struct.tda18271_priv** %11, align 8
  store %struct.tda18271_priv* %12, %struct.tda18271_priv** %7, align 8
  %13 = load %struct.tda18271_priv*, %struct.tda18271_priv** %7, align 8
  %14 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TDA18271_CAL_PLL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @R_EB7, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @R_EB4, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, -33
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %28, align 1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 1
  %35 = shl i32 %34, 5
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %35
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %39, align 1
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @tda18271_write_regs(%struct.dvb_frontend* %44, i32 %45, i32 1)
  ret i32 %46
}

declare dso_local i32 @tda18271_write_regs(%struct.dvb_frontend*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
