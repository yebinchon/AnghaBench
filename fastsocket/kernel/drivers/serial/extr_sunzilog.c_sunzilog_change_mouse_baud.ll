; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunzilog.c_sunzilog_change_mouse_baud.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunzilog.c_sunzilog_change_mouse_baud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunzilog_port = type { i32, i32*, i32 }

@CBAUD = common dso_local global i32 0, align 4
@ZS_CLOCK = common dso_local global i32 0, align 4
@ZS_CLOCK_DIVISOR = common dso_local global i32 0, align 4
@R12 = common dso_local global i64 0, align 8
@R13 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunzilog_port*)* @sunzilog_change_mouse_baud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunzilog_change_mouse_baud(%struct.uart_sunzilog_port* %0) #0 {
  %2 = alloca %struct.uart_sunzilog_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_sunzilog_port* %0, %struct.uart_sunzilog_port** %2, align 8
  %6 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @CBAUD, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @suncore_mouse_baud_cflag_next(i32 %15, i32* %5)
  %17 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ZS_CLOCK, align 4
  %23 = load i32, i32* @ZS_CLOCK_DIVISOR, align 4
  %24 = sdiv i32 %22, %23
  %25 = call i32 @BPS_TO_BRG(i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 255
  %28 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %2, align 8
  %29 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @R12, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %2, align 8
  %37 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @R13, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %35, i32* %40, align 4
  %41 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %2, align 8
  %42 = load %struct.uart_sunzilog_port*, %struct.uart_sunzilog_port** %2, align 8
  %43 = getelementptr inbounds %struct.uart_sunzilog_port, %struct.uart_sunzilog_port* %42, i32 0, i32 2
  %44 = call i32 @ZILOG_CHANNEL_FROM_PORT(i32* %43)
  %45 = call i32 @sunzilog_maybe_update_regs(%struct.uart_sunzilog_port* %41, i32 %44)
  ret void
}

declare dso_local i32 @suncore_mouse_baud_cflag_next(i32, i32*) #1

declare dso_local i32 @BPS_TO_BRG(i32, i32) #1

declare dso_local i32 @sunzilog_maybe_update_regs(%struct.uart_sunzilog_port*, i32) #1

declare dso_local i32 @ZILOG_CHANNEL_FROM_PORT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
