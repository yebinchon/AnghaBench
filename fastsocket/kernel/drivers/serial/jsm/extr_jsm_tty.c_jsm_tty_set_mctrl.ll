; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.jsm_channel = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.jsm_channel*)* }

@IOCTL = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @jsm_tty_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsm_tty_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jsm_channel*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.jsm_channel*
  store %struct.jsm_channel* %7, %struct.jsm_channel** %5, align 8
  %8 = load i32, i32* @IOCTL, align 4
  %9 = load i32, i32* @INFO, align 4
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %11 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @jsm_printk(i32 %8, i32 %9, i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TIOCM_RTS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @UART_MCR_RTS, align 4
  %21 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %22 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @UART_MCR_RTS, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %29 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %25, %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TIOCM_DTR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32, i32* @UART_MCR_DTR, align 4
  %39 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %40 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %50

43:                                               ; preds = %32
  %44 = load i32, i32* @UART_MCR_DTR, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %47 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %43, %37
  %51 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %52 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %56, align 8
  %58 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %59 = call i32 %57(%struct.jsm_channel* %58)
  %60 = load i32, i32* @IOCTL, align 4
  %61 = load i32, i32* @INFO, align 4
  %62 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %63 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = call i32 @jsm_printk(i32 %60, i32 %61, i32* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
