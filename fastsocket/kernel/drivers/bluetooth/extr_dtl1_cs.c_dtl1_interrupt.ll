; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8, i32, i32, %struct.TYPE_7__*, i32 }
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
@UART_MSR = common dso_local global i64 0, align 8
@UART_MSR_RI = common dso_local global i8 0, align 1
@XMIT_WAITING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dtl1_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtl1_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @UART_IIR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @inb(i64 %34)
  %36 = load i32, i32* @UART_IIR_ID, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %71, %2
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = load i64, i64* @UART_LSR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @inb(i64 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  switch i32 %48, label %63 [
    i32 129, label %49
    i32 130, label %51
    i32 128, label %54
  ]

49:                                               ; preds = %41
  %50 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %66

51:                                               ; preds = %41
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = call i32 @dtl1_receive(%struct.TYPE_8__* %52)
  br label %66

54:                                               ; preds = %41
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @UART_LSR_THRE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = call i32 @dtl1_write_wakeup(%struct.TYPE_8__* %60)
  br label %62

62:                                               ; preds = %59, %54
  br label %66

63:                                               ; preds = %41
  %64 = load i32, i32* %9, align 4
  %65 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %62, %51, %49
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = icmp sgt i32 %67, 100
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %79

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* @UART_IIR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @inb(i64 %75)
  %77 = load i32, i32* @UART_IIR_ID, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %9, align 4
  br label %38

79:                                               ; preds = %70, %38
  %80 = load i32, i32* %6, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* @UART_MSR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @inb(i64 %83)
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %7, align 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i8, i8* %87, align 8
  %89 = zext i8 %88 to i32
  %90 = load i8, i8* %7, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @UART_MSR_RI, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = xor i32 %89, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %79
  %98 = load i8, i8* %7, align 1
  %99 = zext i8 %98 to i32
  %100 = load i8, i8* @UART_MSR_RI, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 %99, %101
  %103 = trunc i32 %102 to i8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i8 %103, i8* %105, align 8
  %106 = load i32, i32* @XMIT_WAITING, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = call i32 @clear_bit(i32 %106, i32* %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = call i32 @dtl1_write_wakeup(%struct.TYPE_8__* %110)
  %112 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %97, %79
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @dtl1_receive(%struct.TYPE_8__*) #1

declare dso_local i32 @dtl1_write_wakeup(%struct.TYPE_8__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
