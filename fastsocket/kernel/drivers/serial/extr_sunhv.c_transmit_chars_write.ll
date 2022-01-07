; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_transmit_chars_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_transmit_chars_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.circ_buf = type { i64, i32, i64 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@HV_EOK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.circ_buf*)* @transmit_chars_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars_write(%struct.uart_port* %0, %struct.circ_buf* %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store %struct.circ_buf* %1, %struct.circ_buf** %4, align 8
  br label %9

9:                                                ; preds = %38, %2
  %10 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %11 = call i32 @uart_circ_empty(%struct.circ_buf* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %56

14:                                               ; preds = %9
  %15 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %16 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %19 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  %22 = call i64 @__pa(i64 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %24 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %27 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @UART_XMIT_SIZE, align 4
  %30 = call i64 @CIRC_CNT_TO_END(i32 %25, i64 %28, i32 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @sun4v_con_write(i64 %31, i64 %32, i64* %8)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @HV_EOK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %14
  br label %56

38:                                               ; preds = %14
  %39 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %40 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %41, %42
  %44 = load i32, i32* @UART_XMIT_SIZE, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = and i64 %43, %46
  %48 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %49 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %50
  store i64 %55, i64* %53, align 8
  br label %9

56:                                               ; preds = %37, %9
  ret void
}

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i64 @__pa(i64) #1

declare dso_local i64 @CIRC_CNT_TO_END(i32, i64, i32) #1

declare dso_local i64 @sun4v_con_write(i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
