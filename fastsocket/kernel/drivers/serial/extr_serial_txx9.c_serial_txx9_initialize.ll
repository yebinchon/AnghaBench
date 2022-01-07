; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_serial_txx9_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_txx9.c_serial_txx9_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_txx9_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TXX9_SIFCR = common dso_local global i32 0, align 4
@TXX9_SIFCR_SWRST = common dso_local global i32 0, align 4
@TXX9_SIFCR_TDIL_MAX = common dso_local global i32 0, align 4
@TXX9_SIFCR_RDIL_1 = common dso_local global i32 0, align 4
@TXX9_SILCR = common dso_local global i32 0, align 4
@TXX9_SILCR_UMODE_8BIT = common dso_local global i32 0, align 4
@TXX9_SILCR_USBL_1BIT = common dso_local global i32 0, align 4
@UPF_TXX9_USE_SCLK = common dso_local global i32 0, align 4
@TXX9_SILCR_SCS_SCLK_BG = common dso_local global i32 0, align 4
@TXX9_SILCR_SCS_IMCLK_BG = common dso_local global i32 0, align 4
@TXX9_SIFLCR = common dso_local global i32 0, align 4
@TXX9_SIFLCR_RTSTL_MAX = common dso_local global i32 0, align 4
@TXX9_SIDICR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_txx9_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_txx9_initialize(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_txx9_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port* %5)
  store %struct.uart_txx9_port* %6, %struct.uart_txx9_port** %3, align 8
  store i32 10000, i32* %4, align 4
  %7 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %8 = load i32, i32* @TXX9_SIFCR, align 4
  %9 = load i32, i32* @TXX9_SIFCR_SWRST, align 4
  %10 = call i32 @sio_out(%struct.uart_txx9_port* %7, i32 %8, i32 %9)
  %11 = call i32 (...) @mmiowb()
  %12 = call i32 @udelay(i32 1)
  br label %13

13:                                               ; preds = %26, %1
  %14 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %15 = load i32, i32* @TXX9_SIFCR, align 4
  %16 = call i32 @sio_in(%struct.uart_txx9_port* %14, i32 %15)
  %17 = load i32, i32* @TXX9_SIFCR_SWRST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ false, %13 ], [ %23, %20 ]
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = call i32 @udelay(i32 1)
  br label %13

28:                                               ; preds = %24
  %29 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %30 = load i32, i32* @TXX9_SIFCR, align 4
  %31 = load i32, i32* @TXX9_SIFCR_TDIL_MAX, align 4
  %32 = load i32, i32* @TXX9_SIFCR_RDIL_1, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @sio_set(%struct.uart_txx9_port* %29, i32 %30, i32 %33)
  %35 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %36 = load i32, i32* @TXX9_SILCR, align 4
  %37 = load i32, i32* @TXX9_SILCR_UMODE_8BIT, align 4
  %38 = load i32, i32* @TXX9_SILCR_USBL_1BIT, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UPF_TXX9_USE_SCLK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i32, i32* @TXX9_SILCR_SCS_SCLK_BG, align 4
  br label %51

49:                                               ; preds = %28
  %50 = load i32, i32* @TXX9_SILCR_SCS_IMCLK_BG, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = or i32 %39, %52
  %54 = call i32 @sio_out(%struct.uart_txx9_port* %35, i32 %36, i32 %53)
  %55 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = call i32 @uart_get_divisor(%struct.uart_port* %56, i32 9600)
  %58 = call i32 @sio_quot_set(%struct.uart_txx9_port* %55, i32 %57)
  %59 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %60 = load i32, i32* @TXX9_SIFLCR, align 4
  %61 = load i32, i32* @TXX9_SIFLCR_RTSTL_MAX, align 4
  %62 = call i32 @sio_out(%struct.uart_txx9_port* %59, i32 %60, i32 %61)
  %63 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %64 = load i32, i32* @TXX9_SIDICR, align 4
  %65 = call i32 @sio_out(%struct.uart_txx9_port* %63, i32 %64, i32 0)
  ret void
}

declare dso_local %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port*) #1

declare dso_local i32 @sio_out(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sio_in(%struct.uart_txx9_port*, i32) #1

declare dso_local i32 @sio_set(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_quot_set(%struct.uart_txx9_port*, i32) #1

declare dso_local i32 @uart_get_divisor(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
