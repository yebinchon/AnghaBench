; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_sc26xx_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sc26xx.c_sc26xx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sc26xx_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tty_struct = type { i32 }

@ISR = common dso_local global i32 0, align 4
@ISR_TXRDYA = common dso_local global i32 0, align 4
@ISR_RXRDYA = common dso_local global i32 0, align 4
@ISR_TXRDYB = common dso_local global i32 0, align 4
@ISR_RXRDYB = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sc26xx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc26xx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_sc26xx_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uart_sc26xx_port*
  store %struct.uart_sc26xx_port* %10, %struct.uart_sc26xx_port** %5, align 8
  %11 = load %struct.uart_sc26xx_port*, %struct.uart_sc26xx_port** %5, align 8
  %12 = getelementptr inbounds %struct.uart_sc26xx_port, %struct.uart_sc26xx_port* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  store %struct.tty_struct* null, %struct.tty_struct** %6, align 8
  %18 = load %struct.uart_sc26xx_port*, %struct.uart_sc26xx_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_sc26xx_port, %struct.uart_sc26xx_port* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 0
  %22 = load i32, i32* @ISR, align 4
  %23 = call i32 @READ_SC(%struct.TYPE_4__* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @ISR_TXRDYA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.uart_sc26xx_port*, %struct.uart_sc26xx_port** %5, align 8
  %30 = getelementptr inbounds %struct.uart_sc26xx_port, %struct.uart_sc26xx_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 0
  %33 = call i32 @transmit_chars(%struct.TYPE_4__* %32)
  br label %34

34:                                               ; preds = %28, %2
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ISR_RXRDYA, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load %struct.uart_sc26xx_port*, %struct.uart_sc26xx_port** %5, align 8
  %41 = getelementptr inbounds %struct.uart_sc26xx_port, %struct.uart_sc26xx_port* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 0
  %44 = call %struct.tty_struct* @receive_chars(%struct.TYPE_4__* %43)
  store %struct.tty_struct* %44, %struct.tty_struct** %6, align 8
  br label %45

45:                                               ; preds = %39, %34
  %46 = load %struct.uart_sc26xx_port*, %struct.uart_sc26xx_port** %5, align 8
  %47 = getelementptr inbounds %struct.uart_sc26xx_port, %struct.uart_sc26xx_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %53 = icmp ne %struct.tty_struct* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %56 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %55)
  br label %57

57:                                               ; preds = %54, %45
  %58 = load %struct.uart_sc26xx_port*, %struct.uart_sc26xx_port** %5, align 8
  %59 = getelementptr inbounds %struct.uart_sc26xx_port, %struct.uart_sc26xx_port* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @spin_lock(i32* %62)
  store %struct.tty_struct* null, %struct.tty_struct** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ISR_TXRDYB, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.uart_sc26xx_port*, %struct.uart_sc26xx_port** %5, align 8
  %70 = getelementptr inbounds %struct.uart_sc26xx_port, %struct.uart_sc26xx_port* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 1
  %73 = call i32 @transmit_chars(%struct.TYPE_4__* %72)
  br label %74

74:                                               ; preds = %68, %57
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @ISR_RXRDYB, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.uart_sc26xx_port*, %struct.uart_sc26xx_port** %5, align 8
  %81 = getelementptr inbounds %struct.uart_sc26xx_port, %struct.uart_sc26xx_port* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 1
  %84 = call %struct.tty_struct* @receive_chars(%struct.TYPE_4__* %83)
  store %struct.tty_struct* %84, %struct.tty_struct** %6, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load %struct.uart_sc26xx_port*, %struct.uart_sc26xx_port** %5, align 8
  %87 = getelementptr inbounds %struct.uart_sc26xx_port, %struct.uart_sc26xx_port* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %94 = icmp ne %struct.tty_struct* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %97 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %96)
  br label %98

98:                                               ; preds = %95, %85
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @READ_SC(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @transmit_chars(%struct.TYPE_4__*) #1

declare dso_local %struct.tty_struct* @receive_chars(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
