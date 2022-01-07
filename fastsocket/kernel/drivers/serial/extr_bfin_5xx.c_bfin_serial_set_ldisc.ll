; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_5xx.c_bfin_serial_set_ldisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_5xx.c_bfin_serial_set_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__*, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@bfin_serial_ports = common dso_local global i32* null, align 8
@IREN = common dso_local global i16 0, align 2
@RPOLC = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @bfin_serial_set_ldisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_serial_set_ldisc(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %8, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %75

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %53 [
    i32 128, label %32
  ]

32:                                               ; preds = %21
  %33 = load i32*, i32** @bfin_serial_ports, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call zeroext i16 @UART_GET_GCTL(i32* %36)
  store i16 %37, i16* %4, align 2
  %38 = load i16, i16* @IREN, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @RPOLC, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %39, %41
  %43 = load i16, i16* %4, align 2
  %44 = zext i16 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %4, align 2
  %47 = load i32*, i32** @bfin_serial_ports, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i16, i16* %4, align 2
  %52 = call i32 @UART_PUT_GCTL(i32* %50, i16 zeroext %51)
  br label %75

53:                                               ; preds = %21
  %54 = load i32*, i32** @bfin_serial_ports, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call zeroext i16 @UART_GET_GCTL(i32* %57)
  store i16 %58, i16* %4, align 2
  %59 = load i16, i16* @IREN, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* @RPOLC, align 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %60, %62
  %64 = xor i32 %63, -1
  %65 = load i16, i16* %4, align 2
  %66 = zext i16 %65 to i32
  %67 = and i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %4, align 2
  %69 = load i32*, i32** @bfin_serial_ports, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i16, i16* %4, align 2
  %74 = call i32 @UART_PUT_GCTL(i32* %72, i16 zeroext %73)
  br label %75

75:                                               ; preds = %20, %53, %32
  ret void
}

declare dso_local zeroext i16 @UART_GET_GCTL(i32*) #1

declare dso_local i32 @UART_PUT_GCTL(i32*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
