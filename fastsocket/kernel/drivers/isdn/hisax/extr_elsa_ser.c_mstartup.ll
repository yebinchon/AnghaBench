; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_mstartup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa_ser.c_mstartup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i64, i64, i64 }

@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@BASE_BAUD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*)* @mstartup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mstartup(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = load i32, i32* @UART_FCR, align 4
  %6 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %7 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @serial_outp(%struct.IsdnCardState* %4, i32 %5, i32 %8)
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = load i32, i32* @UART_LSR, align 4
  %12 = call i32 @serial_inp(%struct.IsdnCardState* %10, i32 %11)
  %13 = icmp eq i32 %12, 255
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %104

17:                                               ; preds = %1
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %19 = load i32, i32* @UART_RX, align 4
  %20 = call i32 @serial_inp(%struct.IsdnCardState* %18, i32 %19)
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %22 = load i32, i32* @UART_IIR, align 4
  %23 = call i32 @serial_inp(%struct.IsdnCardState* %21, i32 %22)
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %25 = load i32, i32* @UART_MSR, align 4
  %26 = call i32 @serial_inp(%struct.IsdnCardState* %24, i32 %25)
  %27 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %28 = load i32, i32* @UART_LCR, align 4
  %29 = load i32, i32* @UART_LCR_WLEN8, align 4
  %30 = call i32 @serial_outp(%struct.IsdnCardState* %27, i32 %28, i32 %29)
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* @UART_MCR_DTR, align 4
  %36 = load i32, i32* @UART_MCR_RTS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @UART_MCR_OUT2, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %45 = load i32, i32* @UART_MCR, align 4
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @serial_outp(%struct.IsdnCardState* %44, i32 %45, i32 %50)
  %52 = load i32, i32* @UART_IER_MSI, align 4
  %53 = load i32, i32* @UART_IER_RLSI, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @UART_IER_RDI, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %58 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %62 = load i32, i32* @UART_IER, align 4
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %64 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @serial_outp(%struct.IsdnCardState* %61, i32 %62, i32 %67)
  %69 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %70 = load i32, i32* @UART_LSR, align 4
  %71 = call i32 @serial_inp(%struct.IsdnCardState* %69, i32 %70)
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %73 = load i32, i32* @UART_RX, align 4
  %74 = call i32 @serial_inp(%struct.IsdnCardState* %72, i32 %73)
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %76 = load i32, i32* @UART_IIR, align 4
  %77 = call i32 @serial_inp(%struct.IsdnCardState* %75, i32 %76)
  %78 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %79 = load i32, i32* @UART_MSR, align 4
  %80 = call i32 @serial_inp(%struct.IsdnCardState* %78, i32 %79)
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %82 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  store i64 0, i64* %84, align 8
  %85 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %86 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  store i64 0, i64* %88, align 8
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %90 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  store i64 0, i64* %96, align 8
  %97 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %98 = load i32, i32* @BASE_BAUD, align 4
  %99 = call i32 @change_speed(%struct.IsdnCardState* %97, i32 %98)
  %100 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %101 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  br label %104

104:                                              ; preds = %17, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @serial_outp(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @serial_inp(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @change_speed(%struct.IsdnCardState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
