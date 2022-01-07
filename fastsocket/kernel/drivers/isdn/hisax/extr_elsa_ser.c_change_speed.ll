; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BASE_BAUD = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_1 = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_8 = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"modem quot=0x%x\00", align 1
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32)* @change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_speed(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 3, i32* %7, align 4
  store i32 10, i32* %9, align 4
  %10 = load i32, i32* @BASE_BAUD, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %17, 9600
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %20, %21
  %23 = icmp slt i32 %22, 2400
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %26 = load i32, i32* @UART_FCR_TRIGGER_1, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %30 = load i32, i32* @UART_FCR_TRIGGER_8, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %34 = load i32, i32* @UART_FCR, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @serial_outp(%struct.IsdnCardState* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @UART_IER_MSI, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %38
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @UART_IER_MSI, align 4
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %45
  store i32 %51, i32* %49, align 4
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %53 = load i32, i32* @UART_IER, align 4
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %55 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @serial_outp(%struct.IsdnCardState* %52, i32 %53, i32 %58)
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @debugl1(%struct.IsdnCardState* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %64 = load i32, i32* @UART_LCR, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @UART_LCR_DLAB, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @serial_outp(%struct.IsdnCardState* %63, i32 %64, i32 %67)
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %70 = load i32, i32* @UART_DLL, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, 255
  %73 = call i32 @serial_outp(%struct.IsdnCardState* %69, i32 %70, i32 %72)
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %75 = load i32, i32* @UART_DLM, align 4
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %76, 8
  %78 = call i32 @serial_outp(%struct.IsdnCardState* %74, i32 %75, i32 %77)
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %80 = load i32, i32* @UART_LCR, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @serial_outp(%struct.IsdnCardState* %79, i32 %80, i32 %81)
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %84 = load i32, i32* @UART_RX, align 4
  %85 = call i32 @serial_inp(%struct.IsdnCardState* %83, i32 %84)
  ret void
}

declare dso_local i32 @serial_outp(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

declare dso_local i32 @serial_inp(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
