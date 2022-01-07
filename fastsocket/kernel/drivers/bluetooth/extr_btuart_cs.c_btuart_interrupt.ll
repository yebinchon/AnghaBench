; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i64 0, align 8
@UART_IIR_ID = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"RLSI\00", align 1
@UART_LSR_THRE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unhandled IIR=%#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @btuart_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btuart_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @UART_IIR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inb(i64 %33)
  %35 = load i32, i32* @UART_IIR_ID, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %70, %2
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* @UART_LSR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inb(i64 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %62 [
    i32 129, label %48
    i32 130, label %50
    i32 128, label %53
  ]

48:                                               ; preds = %40
  %49 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %65

50:                                               ; preds = %40
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = call i32 @btuart_receive(%struct.TYPE_8__* %51)
  br label %65

53:                                               ; preds = %40
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @UART_LSR_THRE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = call i32 @btuart_write_wakeup(%struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %58, %53
  br label %65

62:                                               ; preds = %40
  %63 = load i32, i32* %8, align 4
  %64 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %62, %61, %50, %48
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = icmp sgt i32 %66, 100
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %78

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* @UART_IIR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @inb(i64 %74)
  %76 = load i32, i32* @UART_IIR_ID, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %8, align 4
  br label %37

78:                                               ; preds = %69, %37
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @btuart_receive(%struct.TYPE_8__*) #1

declare dso_local i32 @btuart_write_wakeup(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
