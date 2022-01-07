; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c___uart_put_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c___uart_put_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.circ_buf = type { i8*, i64 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.circ_buf*, i8)* @__uart_put_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uart_put_char(%struct.uart_port* %0, %struct.circ_buf* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.circ_buf*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %5, align 8
  store %struct.circ_buf* %1, %struct.circ_buf** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 0, i32* %9, align 4
  %10 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %11 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %21 = call i64 @uart_circ_chars_free(%struct.circ_buf* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %15
  %24 = load i8, i8* %7, align 1
  %25 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %26 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %29 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  store i8 %24, i8* %31, align 1
  %32 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %33 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  %36 = load i32, i32* @UART_XMIT_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = and i64 %35, %38
  %40 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %41 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %23, %15
  %43 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @uart_circ_chars_free(%struct.circ_buf*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
