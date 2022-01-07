; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_serial_txx9_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_serial_txx9_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_txx9_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TXX9_SIDISR = common dso_local global i32 0, align 4
@TXX9_SIDICR = common dso_local global i32 0, align 4
@TXX9_SIDICR_TIE = common dso_local global i32 0, align 4
@TXX9_SIDISR_TDIS = common dso_local global i32 0, align 4
@TXX9_SIDISR_RDIS = common dso_local global i32 0, align 4
@TXX9_SIDISR_TOUT = common dso_local global i32 0, align 4
@PASS_LIMIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @serial_txx9_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_txx9_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uart_txx9_port*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uart_txx9_port*
  store %struct.uart_txx9_port* %9, %struct.uart_txx9_port** %6, align 8
  br label %10

10:                                               ; preds = %2, %77
  %11 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %6, align 8
  %12 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %6, align 8
  %16 = load i32, i32* @TXX9_SIDISR, align 4
  %17 = call i32 @sio_in(%struct.uart_txx9_port* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %6, align 8
  %19 = load i32, i32* @TXX9_SIDICR, align 4
  %20 = call i32 @sio_in(%struct.uart_txx9_port* %18, i32 %19)
  %21 = load i32, i32* @TXX9_SIDICR_TIE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %10
  %25 = load i32, i32* @TXX9_SIDISR_TDIS, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %24, %10
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TXX9_SIDISR_TDIS, align 4
  %32 = load i32, i32* @TXX9_SIDISR_RDIS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @TXX9_SIDISR_TOUT, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %30, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %6, align 8
  %40 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %78

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TXX9_SIDISR_RDIS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %6, align 8
  %50 = call i32 @receive_chars(%struct.uart_txx9_port* %49, i32* %7)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @TXX9_SIDISR_TDIS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %6, align 8
  %58 = call i32 @transmit_chars(%struct.uart_txx9_port* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %6, align 8
  %61 = load i32, i32* @TXX9_SIDISR, align 4
  %62 = load i32, i32* @TXX9_SIDISR_TDIS, align 4
  %63 = load i32, i32* @TXX9_SIDISR_RDIS, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @TXX9_SIDISR_TOUT, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @sio_mask(%struct.uart_txx9_port* %60, i32 %61, i32 %66)
  %68 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %6, align 8
  %69 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @PASS_LIMIT, align 4
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %59
  br label %78

77:                                               ; preds = %59
  br label %10

78:                                               ; preds = %76, %38
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* @IRQ_HANDLED, align 4
  br label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @IRQ_NONE, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  ret i32 %86
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sio_in(%struct.uart_txx9_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @receive_chars(%struct.uart_txx9_port*, i32*) #1

declare dso_local i32 @transmit_chars(%struct.uart_txx9_port*) #1

declare dso_local i32 @sio_mask(%struct.uart_txx9_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
