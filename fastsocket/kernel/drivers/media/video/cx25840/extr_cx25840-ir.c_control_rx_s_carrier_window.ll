; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_control_rx_s_carrier_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx25840/extr_cx25840-ir.c_control_rx_s_carrier_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@CNTRL_WIN_3_4 = common dso_local global i32 0, align 4
@CNTRL_WIN_3_3 = common dso_local global i32 0, align 4
@CNTRL_WIN_4_3 = common dso_local global i32 0, align 4
@CX25840_IR_CNTRL_REG = common dso_local global i32 0, align 4
@CNTRL_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, i32*, i32*)* @control_rx_s_carrier_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @control_rx_s_carrier_window(%struct.i2c_client* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = mul i32 %11, 16
  store i32 %12, i32* %10, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @DIV_ROUND_CLOSEST(i32 %15, i32 19)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i32, i32* @CNTRL_WIN_3_4, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @DIV_ROUND_CLOSEST(i32 %20, i32 20)
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %28

23:                                               ; preds = %4
  %24 = load i32, i32* @CNTRL_WIN_3_3, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @DIV_ROUND_CLOSEST(i32 %25, i32 19)
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @DIV_ROUND_CLOSEST(i32 %31, i32 13)
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* @CNTRL_WIN_4_3, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @DIV_ROUND_CLOSEST(i32 %38, i32 12)
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  br label %48

41:                                               ; preds = %28
  %42 = load i32, i32* @CNTRL_WIN_3_3, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @DIV_ROUND_CLOSEST(i32 %45, i32 13)
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %50 = load i32, i32* @CX25840_IR_CNTRL_REG, align 4
  %51 = load i32, i32* @CNTRL_WIN, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @cx25840_and_or4(%struct.i2c_client* %49, i32 %50, i32 %52, i32 %53)
  ret void
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @cx25840_and_or4(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
