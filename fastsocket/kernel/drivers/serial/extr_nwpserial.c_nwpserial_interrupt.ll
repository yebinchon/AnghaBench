; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_nwpserial.c_nwpserial_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_nwpserial.c_nwpserial_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nwpserial_port = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UART_IIR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@NWPSERIAL_STATUS_RXVALID = common dso_local global i64 0, align 8
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nwpserial_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nwpserial_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nwpserial_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.nwpserial_port*
  store %struct.nwpserial_port* %11, %struct.nwpserial_port** %5, align 8
  %12 = load %struct.nwpserial_port*, %struct.nwpserial_port** %5, align 8
  %13 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.tty_struct*, %struct.tty_struct** %17, align 8
  store %struct.tty_struct* %18, %struct.tty_struct** %6, align 8
  %19 = load %struct.nwpserial_port*, %struct.nwpserial_port** %5, align 8
  %20 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.nwpserial_port*, %struct.nwpserial_port** %5, align 8
  %24 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @UART_IIR, align 4
  %27 = call i32 @dcr_read(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %7, align 4
  br label %76

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %58, %32
  %34 = load %struct.nwpserial_port*, %struct.nwpserial_port** %5, align 8
  %35 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.nwpserial_port*, %struct.nwpserial_port** %5, align 8
  %41 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @UART_RX, align 4
  %44 = call i32 @dcr_read(i32 %42, i32 %43)
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %9, align 1
  %46 = load %struct.nwpserial_port*, %struct.nwpserial_port** %5, align 8
  %47 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NWPSERIAL_STATUS_RXVALID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %33
  %53 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %54 = load i8, i8* %9, align 1
  %55 = load i32, i32* @TTY_NORMAL, align 4
  %56 = call i32 @tty_insert_flip_char(%struct.tty_struct* %53, i8 zeroext %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %33
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.nwpserial_port*, %struct.nwpserial_port** %5, align 8
  %60 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @UART_LSR, align 4
  %63 = call i32 @dcr_read(i32 %61, i32 %62)
  %64 = load i32, i32* @UART_LSR_DR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %33, label %67

67:                                               ; preds = %58
  %68 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %69 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %68)
  %70 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.nwpserial_port*, %struct.nwpserial_port** %5, align 8
  %72 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @UART_IIR, align 4
  %75 = call i32 @dcr_write(i32 %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %67, %30
  %77 = load %struct.nwpserial_port*, %struct.nwpserial_port** %5, align 8
  %78 = getelementptr inbounds %struct.nwpserial_port, %struct.nwpserial_port* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dcr_read(i32, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i8 zeroext, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i32 @dcr_write(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
