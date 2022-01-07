; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_sio_quot_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_sio_quot_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_txx9_port = type { i32 }

@TXX9_SIBGR = common dso_local global i32 0, align 4
@TXX9_SIBGR_BCLK_T0 = common dso_local global i32 0, align 4
@TXX9_SIBGR_BCLK_T2 = common dso_local global i32 0, align 4
@TXX9_SIBGR_BCLK_T4 = common dso_local global i32 0, align 4
@TXX9_SIBGR_BCLK_T6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_txx9_port*, i32)* @sio_quot_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sio_quot_set(%struct.uart_txx9_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_txx9_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_txx9_port* %0, %struct.uart_txx9_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 1
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %11 = load i32, i32* @TXX9_SIBGR, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @TXX9_SIBGR_BCLK_T0, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @sio_out(%struct.uart_txx9_port* %10, i32 %11, i32 %14)
  br label %58

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 1024
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %21 = load i32, i32* @TXX9_SIBGR, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 2
  %24 = load i32, i32* @TXX9_SIBGR_BCLK_T2, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @sio_out(%struct.uart_txx9_port* %20, i32 %21, i32 %25)
  br label %57

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 4096
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %32 = load i32, i32* @TXX9_SIBGR, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 4
  %35 = load i32, i32* @TXX9_SIBGR_BCLK_T4, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @sio_out(%struct.uart_txx9_port* %31, i32 %32, i32 %36)
  br label %56

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 16384
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %43 = load i32, i32* @TXX9_SIBGR, align 4
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 6
  %46 = load i32, i32* @TXX9_SIBGR_BCLK_T6, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @sio_out(%struct.uart_txx9_port* %42, i32 %43, i32 %47)
  br label %55

49:                                               ; preds = %38
  %50 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %51 = load i32, i32* @TXX9_SIBGR, align 4
  %52 = load i32, i32* @TXX9_SIBGR_BCLK_T6, align 4
  %53 = or i32 255, %52
  %54 = call i32 @sio_out(%struct.uart_txx9_port* %50, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %41
  br label %56

56:                                               ; preds = %55, %30
  br label %57

57:                                               ; preds = %56, %19
  br label %58

58:                                               ; preds = %57, %9
  ret void
}

declare dso_local i32 @sio_out(%struct.uart_txx9_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
