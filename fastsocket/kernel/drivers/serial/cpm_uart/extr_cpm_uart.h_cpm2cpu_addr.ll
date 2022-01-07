; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart.h_cpm2cpu_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart.h_cpm2cpu_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_cpm_port = type { i64, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, %struct.uart_cpm_port*)* @cpm2cpu_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cpm2cpu_addr(i64 %0, %struct.uart_cpm_port* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uart_cpm_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.uart_cpm_port* %1, %struct.uart_cpm_port** %5, align 8
  %9 = load i64, i64* %4, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %21 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = icmp slt i64 %18, %23
  br label %25

25:                                               ; preds = %17, %2
  %26 = phi i1 [ false, %2 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %31, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %36 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %37, i64 %39
  store i8* %40, i8** %3, align 8
  br label %43

41:                                               ; preds = %25
  %42 = call i32 (...) @BUG()
  store i8* null, i8** %3, align 8
  br label %43

43:                                               ; preds = %41, %30
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
