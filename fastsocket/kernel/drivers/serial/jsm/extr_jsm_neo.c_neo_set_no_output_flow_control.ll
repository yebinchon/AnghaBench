; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_set_no_output_flow_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_set_no_output_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PARAM = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unsetting Output FLOW\0A\00", align 1
@UART_17158_IER_CTSDSR = common dso_local global i32 0, align 4
@UART_17158_EFR_CTSDSR = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@UART_17158_EFR_IXON = common dso_local global i32 0, align 4
@UART_17158_EFR_ECB = common dso_local global i32 0, align 4
@UART_17158_FCTR_TRGD = common dso_local global i32 0, align 4
@UART_17158_FCTR_RTS_8DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_set_no_output_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_set_no_output_flow_control(%struct.jsm_channel* %0) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = call i32 @readb(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @PARAM, align 4
  %16 = load i32, i32* @INFO, align 4
  %17 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %18 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %17, i32 0, i32 5
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @jsm_printk(i32 %15, i32 %16, i32* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @UART_17158_IER_CTSDSR, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @UART_17158_EFR_CTSDSR, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %31 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IXOFF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load i32, i32* @UART_17158_EFR_IXON, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %1
  %42 = load i32, i32* @UART_17158_EFR_ECB, align 4
  %43 = load i32, i32* @UART_17158_EFR_IXON, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %50 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = call i32 @writeb(i32 0, i32* %52)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %56 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = call i32 @writeb(i32 %54, i32* %58)
  %60 = load i32, i32* @UART_17158_FCTR_TRGD, align 4
  %61 = load i32, i32* @UART_17158_FCTR_RTS_8DELAY, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %64 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = call i32 @writeb(i32 %62, i32* %66)
  %68 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %69 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %71 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = call i32 @writeb(i32 16, i32* %73)
  %75 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %76 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %75, i32 0, i32 1
  store i32 16, i32* %76, align 4
  %77 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %78 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %77, i32 0, i32 3
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = call i32 @writeb(i32 16, i32* %80)
  %82 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %83 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %82, i32 0, i32 2
  store i32 16, i32* %83, align 8
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %86 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 @writeb(i32 %84, i32* %88)
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
