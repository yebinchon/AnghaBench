; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_change_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_change_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Unknown device\00", align 1
@UART_IER = common dso_local global i64 0, align 8
@SPEED_MAX = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_1 = common dso_local global i32 0, align 4
@UART_FCR_TRIGGER_14 = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i64 0, align 8
@UART_DLL = common dso_local global i64 0, align 8
@UART_DLM = common dso_local global i64 0, align 8
@UART_FCR = common dso_local global i64 0, align 8
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @btuart_change_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btuart_change_speed(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = icmp ne %struct.TYPE_7__* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @BT_ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %98

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @UART_IER, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 0, i64 %28)
  %30 = load i32, i32* @SPEED_MAX, align 4
  %31 = load i32, i32* %4, align 4
  %32 = udiv i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %34 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ult i32 %38, 38400
  br i1 %39, label %40, label %44

40:                                               ; preds = %14
  %41 = load i32, i32* @UART_FCR_TRIGGER_1, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %48

44:                                               ; preds = %14
  %45 = load i32, i32* @UART_FCR_TRIGGER_14, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @UART_LCR_WLEN8, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @UART_LCR_DLAB, align 4
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @UART_LCR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %52, i64 %56)
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 255
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* @UART_DLL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outb(i32 %59, i64 %63)
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* @UART_DLM, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @outb(i32 %66, i64 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @UART_LCR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outb(i32 %72, i64 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* @UART_FCR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i32 %78, i64 %82)
  %84 = load i32, i32* @UART_IER_RLSI, align 4
  %85 = load i32, i32* @UART_IER_RDI, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @UART_IER_THRI, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* @UART_IER, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 %88, i64 %92)
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  br label %98

98:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
