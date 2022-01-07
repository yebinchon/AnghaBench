; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio-fe.c_jdvbt90502_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_friio-fe.c_jdvbt90502_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jdvbt90502_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i64, i32 }

@I2C_M_RD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c" reg read failed.\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jdvbt90502_state*, i32, i32*, i64)* @jdvbt90502_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jdvbt90502_reg_read(%struct.jdvbt90502_state* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.jdvbt90502_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.jdvbt90502_state* %0, %struct.jdvbt90502_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 8
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.jdvbt90502_state*, %struct.jdvbt90502_state** %6, align 8
  %21 = getelementptr inbounds %struct.jdvbt90502_state, %struct.jdvbt90502_state* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i32 0, i32 2
  store i64 0, i64* %27, align 16
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %29 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 16
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 1
  store i32 12, i32* %32, align 8
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* @I2C_M_RD, align 8
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 16
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 16
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.jdvbt90502_state*, %struct.jdvbt90502_state** %6, align 8
  %49 = getelementptr inbounds %struct.jdvbt90502_state, %struct.jdvbt90502_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %52 = call i32 @i2c_transfer(i32 %50, %struct.i2c_msg* %51, i32 2)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %55, label %59

55:                                               ; preds = %4
  %56 = call i32 @deb_fe(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* @EREMOTEIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %60

59:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @deb_fe(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
