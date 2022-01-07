; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_set_ixoff_flow_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_set_ixoff_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PARAM = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Setting IXOFF FLOW\0A\00", align 1
@UART_17158_IER_RTSDTR = common dso_local global i32 0, align 4
@UART_17158_EFR_RTSDTR = common dso_local global i32 0, align 4
@UART_17158_IER_XOFF = common dso_local global i32 0, align 4
@UART_17158_EFR_ECB = common dso_local global i32 0, align 4
@UART_17158_EFR_IXOFF = common dso_local global i32 0, align 4
@UART_17158_FCTR_TRGD = common dso_local global i32 0, align 4
@UART_17158_FCTR_RTS_8DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_set_ixoff_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_set_ixoff_flow_control(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %5 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %6 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @readb(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %11 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 7
  %14 = call i32 @readb(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @PARAM, align 4
  %16 = load i32, i32* @INFO, align 4
  %17 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %18 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @jsm_printk(i32 %15, i32 %16, i32* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @UART_17158_IER_RTSDTR, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @UART_17158_EFR_RTSDTR, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @UART_17158_IER_XOFF, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @UART_17158_EFR_ECB, align 4
  %34 = load i32, i32* @UART_17158_EFR_IXOFF, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %39 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 7
  %42 = call i32 @writeb(i32 0, i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %45 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 7
  %48 = call i32 @writeb(i32 %43, i32* %47)
  %49 = load i32, i32* @UART_17158_FCTR_TRGD, align 4
  %50 = load i32, i32* @UART_17158_FCTR_RTS_8DELAY, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %53 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 6
  %56 = call i32 @writeb(i32 %51, i32* %55)
  %57 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %58 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %57, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  %61 = call i32 @writeb(i32 8, i32* %60)
  %62 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %63 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %62, i32 0, i32 0
  store i32 8, i32* %63, align 8
  %64 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %65 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %68 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = call i32 @writeb(i32 %66, i32* %70)
  %72 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %73 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %72, i32 0, i32 3
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = call i32 @writeb(i32 0, i32* %75)
  %77 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %78 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %81 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = call i32 @writeb(i32 %79, i32* %83)
  %85 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %86 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = call i32 @writeb(i32 0, i32* %88)
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %92 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @writeb(i32 %90, i32* %94)
  ret void
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
