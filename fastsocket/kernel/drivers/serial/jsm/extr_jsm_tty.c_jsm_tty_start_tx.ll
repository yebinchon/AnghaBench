; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.jsm_channel = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IOCTL = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@CH_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @jsm_tty_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsm_tty_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.jsm_channel*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = bitcast %struct.uart_port* %4 to %struct.jsm_channel*
  store %struct.jsm_channel* %5, %struct.jsm_channel** %3, align 8
  %6 = load i32, i32* @IOCTL, align 4
  %7 = load i32, i32* @INFO, align 4
  %8 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %9 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @jsm_printk(i32 %6, i32 %7, i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @CH_STOP, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %16 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = call i32 @jsm_tty_write(%struct.uart_port* %19)
  %21 = load i32, i32* @IOCTL, align 4
  %22 = load i32, i32* @INFO, align 4
  %23 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %24 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @jsm_printk(i32 %21, i32 %22, i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*) #1

declare dso_local i32 @jsm_tty_write(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
