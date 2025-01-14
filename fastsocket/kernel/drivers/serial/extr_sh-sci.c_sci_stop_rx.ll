; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_stop_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@SCSCR = common dso_local global i32 0, align 4
@SCI_CTRL_FLAGS_RIE = common dso_local global i16 0, align 2
@SCI_CTRL_FLAGS_REIE = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sci_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = load i32, i32* @SCSCR, align 4
  %6 = call zeroext i16 @sci_in(%struct.uart_port* %4, i32 %5)
  store i16 %6, i16* %3, align 2
  %7 = load i16, i16* @SCI_CTRL_FLAGS_RIE, align 2
  %8 = zext i16 %7 to i32
  %9 = load i16, i16* @SCI_CTRL_FLAGS_REIE, align 2
  %10 = zext i16 %9 to i32
  %11 = or i32 %8, %10
  %12 = xor i32 %11, -1
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, %12
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %3, align 2
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = load i32, i32* @SCSCR, align 4
  %19 = load i16, i16* %3, align 2
  %20 = call i32 @sci_out(%struct.uart_port* %17, i32 %18, i16 zeroext %19)
  ret void
}

declare dso_local zeroext i16 @sci_in(%struct.uart_port*, i32) #1

declare dso_local i32 @sci_out(%struct.uart_port*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
