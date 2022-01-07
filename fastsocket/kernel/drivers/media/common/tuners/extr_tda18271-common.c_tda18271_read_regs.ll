; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_read_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_tda18271-common.c_tda18271_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.tda18271_priv* }
%struct.tda18271_priv = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ERROR: i2c_transfer returned: %d\0A\00", align 1
@tda18271_debug = common dso_local global i32 0, align 4
@DBG_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tda18271_read_regs(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18271_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.tda18271_priv*, %struct.tda18271_priv** %9, align 8
  store %struct.tda18271_priv* %10, %struct.tda18271_priv** %3, align 8
  %11 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %12 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  store i8 0, i8* %5, align 1
  %14 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  store i8* %5, i8** %15, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %19 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %18, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i64 1
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %24, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  store i32 16, i32* %26, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  %28 = load i32, i32* @I2C_M_RD, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  %30 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %31 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %29, align 8
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %35 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %34, i32 1)
  %36 = load %struct.tda18271_priv*, %struct.tda18271_priv** %3, align 8
  %37 = getelementptr inbounds %struct.tda18271_priv, %struct.tda18271_priv* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %41 = call i32 @i2c_transfer(i32 %39, %struct.i2c_msg* %40, i32 2)
  store i32 %41, i32* %6, align 4
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %43 = call i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend* %42, i32 0)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %1
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @tda_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %1
  %50 = load i32, i32* @tda18271_debug, align 4
  %51 = load i32, i32* @DBG_REG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %56 = call i32 @tda18271_dump_regs(%struct.dvb_frontend* %55, i32 0)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ 0, %60 ], [ %62, %61 ]
  ret i32 %64
}

declare dso_local i32 @tda18271_i2c_gate_ctrl(%struct.dvb_frontend*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @tda_err(i8*, i32) #1

declare dso_local i32 @tda18271_dump_regs(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
