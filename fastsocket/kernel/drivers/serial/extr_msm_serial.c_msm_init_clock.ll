; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_init_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_msm_serial.c_msm_init_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.msm_port = type { i32 }

@UART_MREG = common dso_local global i32 0, align 4
@UART_NREG = common dso_local global i32 0, align 4
@UART_DREG = common dso_local global i32 0, align 4
@UART_MNDREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @msm_init_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_init_clock(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.msm_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %4)
  store %struct.msm_port* %5, %struct.msm_port** %3, align 8
  %6 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %7 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @clk_enable(i32 %8)
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = load i32, i32* @UART_MREG, align 4
  %12 = call i32 @msm_write(%struct.uart_port* %10, i32 192, i32 %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = load i32, i32* @UART_NREG, align 4
  %15 = call i32 @msm_write(%struct.uart_port* %13, i32 178, i32 %14)
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load i32, i32* @UART_DREG, align 4
  %18 = call i32 @msm_write(%struct.uart_port* %16, i32 125, i32 %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = load i32, i32* @UART_MNDREG, align 4
  %21 = call i32 @msm_write(%struct.uart_port* %19, i32 28, i32 %20)
  ret void
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
