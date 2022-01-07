; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-io.c_gdbstub_rx_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-io.c_gdbstub_rx_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdbstub_rx_unget = common dso_local global i8 0, align 1
@gdbstub_rx_outp = common dso_local global i32 0, align 4
@gdbstub_rx_inp = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@gdbstub_rx_buffer = common dso_local global i32* null, align 8
@UART_LSR_BI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"### GDB Rx Break Detected ###\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"### GDB Rx Error (st=%02x) ###\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"### GDB Rx %02x (st=%02x) ###\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdbstub_rx_char(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  store i8 -1, i8* %9, align 1
  %10 = load i8, i8* @gdbstub_rx_unget, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8, i8* @gdbstub_rx_unget, align 1
  %14 = load i8*, i8** %4, align 8
  store i8 %13, i8* %14, align 1
  store i8 0, i8* @gdbstub_rx_unget, align 1
  store i32 0, i32* %3, align 4
  br label %74

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %28, %15
  %17 = call i32 (...) @gdbstub_do_rx()
  %18 = load i32, i32* @gdbstub_rx_outp, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @gdbstub_rx_inp, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %74

28:                                               ; preds = %22
  br label %16

29:                                               ; preds = %16
  %30 = load i32*, i32** @gdbstub_rx_buffer, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %6, align 4
  %33 = zext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** @gdbstub_rx_buffer, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = zext i32 %37 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 4095
  store i32 %43, i32* @gdbstub_rx_outp, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @UART_LSR_BI, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = call i32 (i8*, ...) @gdbstub_proto(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINTR, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %74

52:                                               ; preds = %29
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @UART_LSR_FE, align 4
  %55 = load i32, i32* @UART_LSR_OE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @UART_LSR_PE, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i8*, ...) @gdbstub_proto(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %74

66:                                               ; preds = %52
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i8*, ...) @gdbstub_proto(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 127
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %4, align 8
  store i8 %72, i8* %73, align 1
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %66, %61, %48, %25, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @gdbstub_do_rx(...) #1

declare dso_local i32 @gdbstub_proto(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
