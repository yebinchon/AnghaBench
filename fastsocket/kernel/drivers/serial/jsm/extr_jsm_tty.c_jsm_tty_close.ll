; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ktermios* }
%struct.ktermios = type { i32 }
%struct.jsm_board = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)* }
%struct.jsm_channel = type { i32, i32, %struct.jsm_board*, i64, i32, i32 }

@CLOSE = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@CH_STOPI = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Close. HUPCL set, dropping DTR/RTS\0A\00", align 1
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @jsm_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsm_tty_close(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.jsm_board*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.jsm_channel*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.jsm_channel*
  store %struct.jsm_channel* %7, %struct.jsm_channel** %5, align 8
  %8 = load i32, i32* @CLOSE, align 4
  %9 = load i32, i32* @INFO, align 4
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %11 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %10, i32 0, i32 2
  %12 = load %struct.jsm_board*, %struct.jsm_board** %11, align 8
  %13 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %12, i32 0, i32 0
  %14 = call i32 @jsm_printk(i32 %8, i32 %9, i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %16 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %15, i32 0, i32 2
  %17 = load %struct.jsm_board*, %struct.jsm_board** %16, align 8
  store %struct.jsm_board* %17, %struct.jsm_board** %3, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.ktermios*, %struct.ktermios** %24, align 8
  store %struct.ktermios* %25, %struct.ktermios** %4, align 8
  %26 = load i32, i32* @CH_STOPI, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %29 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %33 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %37 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @HUPCL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %1
  %43 = load i32, i32* @CLOSE, align 4
  %44 = load i32, i32* @INFO, align 4
  %45 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %46 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %45, i32 0, i32 2
  %47 = load %struct.jsm_board*, %struct.jsm_board** %46, align 8
  %48 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %47, i32 0, i32 0
  %49 = call i32 @jsm_printk(i32 %43, i32 %44, i32* %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @UART_MCR_DTR, align 4
  %51 = load i32, i32* @UART_MCR_RTS, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %55 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.jsm_board*, %struct.jsm_board** %3, align 8
  %59 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %61, align 8
  %63 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %64 = call i32 %62(%struct.jsm_channel* %63)
  br label %65

65:                                               ; preds = %42, %1
  %66 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %67 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %69 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %68, i32 0, i32 2
  %70 = load %struct.jsm_board*, %struct.jsm_board** %69, align 8
  %71 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %73, align 8
  %75 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %76 = call i32 %74(%struct.jsm_channel* %75)
  %77 = load i32, i32* @CLOSE, align 4
  %78 = load i32, i32* @INFO, align 4
  %79 = load %struct.jsm_channel*, %struct.jsm_channel** %5, align 8
  %80 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %79, i32 0, i32 2
  %81 = load %struct.jsm_board*, %struct.jsm_board** %80, align 8
  %82 = getelementptr inbounds %struct.jsm_board, %struct.jsm_board* %81, i32 0, i32 0
  %83 = call i32 @jsm_printk(i32 %77, i32 %78, i32* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
