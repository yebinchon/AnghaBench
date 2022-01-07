; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-io-serial.c_gdbstub_io_set_baud.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_gdb-io-serial.c_gdbstub_io_set_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GDBPORT_SERIAL_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@GDBPORT_SERIAL_DLL = common dso_local global i32 0, align 4
@GDBPORT_SERIAL_DLM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbstub_io_set_baud(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = udiv i32 1152000, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @GDBPORT_SERIAL_LCR, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @UART_LCR_DLAB, align 4
  %9 = load i32, i32* @GDBPORT_SERIAL_LCR, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @GDBPORT_SERIAL_LCR, align 4
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 255
  store i32 %12, i32* @GDBPORT_SERIAL_DLL, align 4
  %13 = load i32, i32* %3, align 4
  %14 = lshr i32 %13, 8
  %15 = and i32 %14, 255
  store i32 %15, i32* @GDBPORT_SERIAL_DLM, align 4
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* @GDBPORT_SERIAL_LCR, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
