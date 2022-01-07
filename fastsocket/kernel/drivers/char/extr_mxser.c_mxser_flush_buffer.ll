; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.mxser_port* }
%struct.mxser_port = type { i32, i64, i64, i64, i64 }

@UART_FCR = common dso_local global i64 0, align 8
@UART_FCR_CLEAR_RCVR = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_XMIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @mxser_flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_flush_buffer(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.mxser_port*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.mxser_port*, %struct.mxser_port** %7, align 8
  store %struct.mxser_port* %8, %struct.mxser_port** %3, align 8
  %9 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %10 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %9, i32 0, i32 0
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %14 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %16 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %18 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %20 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UART_FCR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call signext i8 @inb(i64 %23)
  store i8 %24, i8* %4, align 1
  %25 = load i8, i8* %4, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @UART_FCR_CLEAR_RCVR, align 1
  %28 = sext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = load i8, i8* @UART_FCR_CLEAR_XMIT, align 1
  %31 = sext i8 %30 to i32
  %32 = or i32 %29, %31
  %33 = trunc i32 %32 to i8
  %34 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %35 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UART_FCR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @outb(i8 signext %33, i64 %38)
  %40 = load i8, i8* %4, align 1
  %41 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %42 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @UART_FCR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outb(i8 signext %40, i64 %45)
  %47 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %48 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %52 = call i32 @tty_wakeup(%struct.tty_struct* %51)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local signext i8 @inb(i64) #1

declare dso_local i32 @outb(i8 signext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
