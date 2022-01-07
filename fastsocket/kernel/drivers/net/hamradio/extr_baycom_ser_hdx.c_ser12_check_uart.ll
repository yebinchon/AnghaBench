; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_ser12_check_uart.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_baycom_ser_hdx.c_ser12_check_uart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c_uart_16450 = common dso_local global i32 0, align 4
@c_uart_unknown = common dso_local global i32 0, align 4
@c_uart_16550 = common dso_local global i32 0, align 4
@c_uart_16550A = common dso_local global i32 0, align 4
@c_uart_8250 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ser12_check_uart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ser12_check_uart(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* @c_uart_16450, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @c_uart_unknown, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  %14 = load i32, i32* @c_uart_16550, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* @c_uart_16550A, align 4
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @MCR(i32 %17)
  %19 = call i32 @inb(i32 %18)
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %4, align 1
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, 16
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @MCR(i32 %24)
  %26 = call i32 @outb(i32 %23, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @MSR(i32 %27)
  %29 = call i32 @inb(i32 %28)
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %5, align 1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @MCR(i32 %31)
  %33 = call i32 @outb(i32 26, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @MSR(i32 %34)
  %36 = call i32 @inb(i32 %35)
  %37 = and i32 %36, 240
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %6, align 1
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @MCR(i32 %41)
  %43 = call i32 @outb(i32 %40, i32 %42)
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @MSR(i32 %46)
  %48 = call i32 @outb(i32 %45, i32 %47)
  %49 = load i8, i8* %6, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp ne i32 %50, 144
  br i1 %51, label %52, label %54

52:                                               ; preds = %1
  %53 = load i32, i32* @c_uart_unknown, align 4
  store i32 %53, i32* %2, align 4
  br label %102

54:                                               ; preds = %1
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @RBR(i32 %55)
  %57 = call i32 @inb(i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @RBR(i32 %58)
  %60 = call i32 @inb(i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @FCR(i32 %61)
  %63 = call i32 @outb(i32 1, i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @IIR(i32 %64)
  %66 = call i32 @inb(i32 %65)
  %67 = ashr i32 %66, 6
  %68 = and i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @c_uart_16450, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %54
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @SCR(i32 %76)
  %78 = call i32 @outb(i32 90, i32 %77)
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @SCR(i32 %79)
  %81 = call i32 @inb(i32 %80)
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %4, align 1
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @SCR(i32 %83)
  %85 = call i32 @outb(i32 165, i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = call i32 @SCR(i32 %86)
  %88 = call i32 @inb(i32 %87)
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %5, align 1
  %90 = load i8, i8* %4, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 90
  br i1 %92, label %97, label %93

93:                                               ; preds = %75
  %94 = load i8, i8* %5, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %95, 165
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %75
  %98 = load i32, i32* @c_uart_8250, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %93
  br label %100

100:                                              ; preds = %99, %54
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %52
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @MCR(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @MSR(i32) #1

declare dso_local i32 @RBR(i32) #1

declare dso_local i32 @FCR(i32) #1

declare dso_local i32 @IIR(i32) #1

declare dso_local i32 @SCR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
