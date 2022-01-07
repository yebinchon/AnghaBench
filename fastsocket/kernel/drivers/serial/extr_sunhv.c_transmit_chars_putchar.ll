; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_transmit_chars_putchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_transmit_chars_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.circ_buf = type { i64, i32* }

@HV_EOK = common dso_local global i64 0, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.circ_buf*)* @transmit_chars_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars_putchar(%struct.uart_port* %0, %struct.circ_buf* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.circ_buf* %1, %struct.circ_buf** %4, align 8
  br label %6

6:                                                ; preds = %25, %2
  %7 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %8 = call i32 @uart_circ_empty(%struct.circ_buf* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %41

11:                                               ; preds = %6
  %12 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %13 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %16 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @sun4v_con_putchar(i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @HV_EOK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  br label %41

25:                                               ; preds = %11
  %26 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %27 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  %30 = load i32, i32* @UART_XMIT_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = and i64 %29, %32
  %34 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %35 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %6

41:                                               ; preds = %24, %6
  ret void
}

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @sun4v_con_putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
