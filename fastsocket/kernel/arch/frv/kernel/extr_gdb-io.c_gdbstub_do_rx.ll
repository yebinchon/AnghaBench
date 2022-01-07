; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-io.c_gdbstub_do_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-io.c_gdbstub_do_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdbstub_rx_inp = common dso_local global i32 0, align 4
@LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@gdbstub_rx_outp = common dso_local global i32 0, align 4
@gdbstub_rx_buffer = common dso_local global i32* null, align 8
@RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbstub_do_rx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @gdbstub_rx_inp, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %18, %0
  %5 = load i32, i32* @LSR, align 4
  %6 = call i32 @__UART(i32 %5)
  %7 = load i32, i32* @UART_LSR_DR, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = load i32, i32* %1, align 4
  %12 = add i32 %11, 2
  %13 = and i32 %12, 4095
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @gdbstub_rx_outp, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %34

18:                                               ; preds = %10
  %19 = load i32, i32* @LSR, align 4
  %20 = call i32 @__UART(i32 %19)
  %21 = load i32*, i32** @gdbstub_rx_buffer, align 8
  %22 = load i32, i32* %1, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %1, align 4
  %24 = zext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  store i32 %20, i32* %25, align 4
  %26 = load i32, i32* @RX, align 4
  %27 = call i32 @__UART(i32 %26)
  %28 = load i32*, i32** @gdbstub_rx_buffer, align 8
  %29 = load i32, i32* %1, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %1, align 4
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* %1, align 4
  br label %4

34:                                               ; preds = %17, %4
  %35 = load i32, i32* %1, align 4
  store i32 %35, i32* @gdbstub_rx_inp, align 4
  %36 = call i32 @__clr_RC(i32 15)
  %37 = call i32 (...) @__clr_IRL()
  ret void
}

declare dso_local i32 @__UART(i32) #1

declare dso_local i32 @__clr_RC(i32) #1

declare dso_local i32 @__clr_IRL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
