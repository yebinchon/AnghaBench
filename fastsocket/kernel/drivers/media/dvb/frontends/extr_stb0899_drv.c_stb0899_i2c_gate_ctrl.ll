; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_i2c_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stb0899_drv.c_stb0899_i2c_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stb0899_state* }
%struct.stb0899_state = type { i32 }

@STB0899_I2CRPT = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Enabling I2C Repeater ...\00", align 1
@STB0899_I2CTON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Disabling I2C Repeater ...\00", align 1
@FE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"I2C Repeater control failed\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb0899_i2c_gate_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stb0899_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stb0899_state*, %struct.stb0899_state** %9, align 8
  store %struct.stb0899_state* %10, %struct.stb0899_state** %7, align 8
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %7, align 8
  %12 = load i32, i32* @STB0899_I2CRPT, align 4
  %13 = call i32 @stb0899_read_reg(%struct.stb0899_state* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %54

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.stb0899_state*, %struct.stb0899_state** %7, align 8
  %22 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FE_DEBUG, align 4
  %25 = call i32 @dprintk(i32 %23, i32 %24, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @STB0899_I2CTON, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.stb0899_state*, %struct.stb0899_state** %7, align 8
  %30 = load i32, i32* @STB0899_I2CRPT, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @stb0899_write_reg(%struct.stb0899_state* %29, i32 %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %54

35:                                               ; preds = %20
  br label %53

36:                                               ; preds = %17
  %37 = load %struct.stb0899_state*, %struct.stb0899_state** %7, align 8
  %38 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FE_DEBUG, align 4
  %41 = call i32 @dprintk(i32 %39, i32 %40, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @STB0899_I2CTON, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load %struct.stb0899_state*, %struct.stb0899_state** %7, align 8
  %47 = load i32, i32* @STB0899_I2CRPT, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @stb0899_write_reg(%struct.stb0899_state* %46, i32 %47, i32 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %54

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %35
  store i32 0, i32* %3, align 4
  br label %62

54:                                               ; preds = %51, %34, %16
  %55 = load %struct.stb0899_state*, %struct.stb0899_state** %7, align 8
  %56 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FE_ERROR, align 4
  %59 = call i32 @dprintk(i32 %57, i32 %58, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EREMOTEIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %53
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

declare dso_local i64 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
