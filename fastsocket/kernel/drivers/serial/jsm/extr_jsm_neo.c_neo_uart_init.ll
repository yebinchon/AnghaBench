; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_uart_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@UART_EFR_ECB = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@CH_FIFO_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_uart_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_uart_init(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %3 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %4 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 6
  %7 = call i32 @writeb(i32 0, i32* %6)
  %8 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %9 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 5
  %12 = call i32 @writeb(i32 0, i32* %11)
  %13 = load i32, i32* @UART_EFR_ECB, align 4
  %14 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %15 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %18 = call i32 @writeb(i32 %13, i32* %17)
  %19 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %20 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  %23 = call i32 @readb(i32* %22)
  %24 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %25 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %30 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = call i32 @writeb(i32 %28, i32* %32)
  %34 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %35 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call i32 @readb(i32* %37)
  %39 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %40 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @readb(i32* %42)
  %44 = load i32, i32* @CH_FIFO_ENABLED, align 4
  %45 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %46 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %50 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %53 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @writeb(i32 %51, i32* %55)
  ret void
}

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @readb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
