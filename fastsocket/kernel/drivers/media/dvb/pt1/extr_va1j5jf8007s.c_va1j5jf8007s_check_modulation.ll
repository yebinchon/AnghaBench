; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_check_modulation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_check_modulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.va1j5jf8007s_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@I2C_M_RD = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.va1j5jf8007s_state*, i32*)* @va1j5jf8007s_check_modulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va1j5jf8007s_check_modulation(%struct.va1j5jf8007s_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.va1j5jf8007s_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.va1j5jf8007s_state* %0, %struct.va1j5jf8007s_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %4, align 8
  %11 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  store i32 195, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 16
  %19 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  store i64 0, i64* %20, align 16
  %21 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %21, i32 0, i32 1
  store i32 4, i32* %22, align 4
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %24 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* @I2C_M_RD, align 8
  %30 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  %32 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %32, i32 0, i32 1
  store i32 4, i32* %33, align 4
  %34 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 1
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %4, align 8
  %38 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %41 = call i32 @i2c_transfer(i32 %39, %struct.i2c_msg* %40, i32 2)
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EREMOTEIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %2
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %43
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
